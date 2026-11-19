.class public Lcom/sightcall/universal/internal/ui/CallActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;
.implements Lcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;
.implements Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;
.implements Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;
.implements Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;
.implements Lcom/sightcall/uvc/DeviceListener;
.implements Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;
.implements Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;
.implements Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;
.implements Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;
.implements Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;
.implements Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;,
        Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;,
        Lcom/sightcall/universal/internal/ui/CallActivity$SaveMediaAndRecycleTask;,
        Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;,
        Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask;
    }
.end annotation


# static fields
.field private static callActivityInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/universal/internal/ui/CallActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field advancedAnnotationsContainer:Landroid/view/ViewGroup;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
    .end annotation
.end field

.field advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private asrBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private call:Lnet/rtccloud/sdk/Call;

.field private callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

.field private callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

.field private callStatusNoMedia:Landroid/widget/ImageView;

.field private callStatusScreencasting:Landroid/widget/ImageView;

.field private callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

.field callViewModelFactory:Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private dc:Lnet/rtccloud/sdk/DataChannelModule;

.field private dispatchTouchEventIgnore:Z

.field private dispatchTouchEventInitialX:F

.field private dispatchTouchEventInitialY:F

.field private final dispatchTouchEventLocation:[I

.field private final dispatchTouchEventRect:Landroid/graphics/Rect;

.field private dispatchTouchEventSlop:I

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final hasTouchScreen:Z

.field historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation
.end field

.field private isScreenOrientationLocked:Z

.field private isVideoStateOn:Z

.field private lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

.field liveSentencesCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation
.end field

.field private liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

.field private liveTranslationPanelButton:Landroid/widget/ImageView;

.field locationSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

.field private messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

.field private messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

.field private myScreenshareConsumerView:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

.field private myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

.field private parameters:Lcom/sightcall/universal/model/CallParameters;

.field private progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

.field private remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

.field requestPermissionsLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resolutionForResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Landroid/widget/FrameLayout;

.field private screenCastPermissionListener:Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;

.field private screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

.field private screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

.field private session:Lcom/sightcall/universal/model/Session;

.field settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation
.end field

.field private startMediaProjection:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

.field private uvcPreview:Lcom/sightcall/universal/internal/view/UvcPreview;

.field private videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

.field private videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

.field private videoProducerCameraView:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

.field private final weakReference:Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CallActivity"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->weakReference:Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->hasTouchScreen:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveSentencesCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventIgnore:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isScreenOrientationLocked:Z

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isVideoStateOn:Z

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$9;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallActivity$9;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->asrBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic A(Lcom/sightcall/universal/internal/ui/CallActivity;Lnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$switchUserUi$17(Lnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    return-void
.end method

.method public static synthetic B(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$onForwardInbandDataChannel$16()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/sightcall/universal/internal/ui/CallActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$initializeLocationSettingsLauncher$2(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic E(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$onCallButtonClickLocal$10()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->executeMediaCaptureEventFromGallery(Lcom/sightcall/pratik/Result;)V

    return-void
.end method

.method public static synthetic G(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$startVideoFromGallery$15(Lcom/sightcall/pratik/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$onRequestPhotoError$13()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/sightcall/universal/internal/ui/CallActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$initializeMediaProjectionLauncher$1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic J(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$createUi$5()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$createUi$7()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/sightcall/universal/internal/ui/CallActivity;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$initializeRequestPermissionsLauncher$4(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic M(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$createUi$6()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$updateScreenshareConsumer$9(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic O(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/app/Service;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$startScreenCastWithMediaProjection$20(Landroid/app/Service;ILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic P(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->instrumented$0$createUi$-Landroid-os-Bundle--V(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->switchUserUi()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$startPhotoFromGallery$14(Lcom/sightcall/pratik/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$stopShareWeb$19()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$startPhotoFromCamera$12(Lcom/sightcall/pratik/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/sightcall/universal/internal/ui/CallActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$stopGlobalShare$18()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->executeMediaCaptureVideoFromGalleryObserver(Lcom/sightcall/pratik/Result;)V

    return-void
.end method

.method public static synthetic W(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/sharemedia/ShareMediaDialog$Result;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$showShareMediaDialog$11(Lcom/sightcall/sharemedia/ShareMediaDialog$Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->restartVideo()V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/sightcall/universal/internal/ui/CallActivity;)Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public static bridge synthetic Z(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/internal/ui/CallViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    return-object p0
.end method

.method public static bridge synthetic a0(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method

.method private addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/sightcall/universal/R$id;->universal_fitSystemWindows:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    return-void
.end method

.method private static applyVisibilityWithDelayedFadeIn(Landroid/widget/ImageView;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_2
    return-void
.end method

.method public static bridge synthetic b0(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void
.end method

.method private createUi(Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lcom/sightcall/universal/R$layout;->universal_activity_call:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventSlop:I

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->rootView:Landroid/widget/FrameLayout;

    sget v0, Lcom/sightcall/universal/R$id;->universal_button_open_panel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationPanelButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationPanelButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationPanelButton:Landroid/widget/ImageView;

    new-instance v1, Lhi;

    invoke-direct {v1, p0, v2}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sightcall/universal/R$id;->universal_call_status_screencasting:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callStatusScreencasting:Landroid/widget/ImageView;

    sget v0, Lcom/sightcall/universal/R$id;->universal_call_status_no_media:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callStatusNoMedia:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v3

    sget v0, Lcom/sightcall/universal/R$id;->universal_video_producer_player:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewStub;

    sget v0, Lcom/sightcall/universal/R$id;->universal_video_player_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewStub;

    iget-object v7, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    iget-object v8, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-object v4, p0

    invoke-interface/range {v3 .. v8}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->init(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewStub;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    iget-boolean p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->hasTouchScreen:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    new-instance v1, Lcom/sightcall/universal/util/SystemUiHelper;

    invoke-direct {v1, v4, p0, v2, v4}, Lcom/sightcall/universal/util/SystemUiHelper;-><init>(Landroid/app/Activity;IILcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;)V

    iput-object v1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    new-instance v8, Lcom/sightcall/universal/internal/view/SystemBarConfig;

    invoke-direct {v8, v4, v0, v0}, Lcom/sightcall/universal/internal/view/SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_consumer_view:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    iput-object v5, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    iget-object v6, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    iget-object v7, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v9, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v10

    iget-object v11, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual/range {v5 .. v11}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->configure(Lnet/rtccloud/sdk/DataChannelModule;Lcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Lcom/sightcall/universal/internal/model/RemoteState;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->setFilterBitmap(Z)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_video_consumer_thumbnail_container:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    iget-object v1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v3, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v3

    iget-object v5, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0, v1, v8, v3, v5}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->configure(Lcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Lcom/sightcall/universal/model/Session;)V

    :cond_2
    sget p0, Lcom/sightcall/universal/R$id;->universal_video_producer_camera:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoProducerCameraView:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p0, v4}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setOnCameraCallback(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_video_producer_uvc:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/UvcPreview;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->uvcPreview:Lcom/sightcall/universal/internal/view/UvcPreview;

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->setOnPlayerCallback(Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->restore()V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->setCallback(Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_video_producer_wrapper:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iput-object v5, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iget-object v6, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v7, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v9, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->configure(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_screenshare_consumer_view:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->myScreenshareConsumerView:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->setFilterBitmap(Z)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_progressivex_imageview:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    iget-object v1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->getProgressivexSink()Lnet/rtccloud/sdk/Sink$Progressivex;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->configure(Lnet/rtccloud/sdk/Sink$Progressivex;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    iget-object v1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->restore(Lcom/sightcall/universal/model/Session;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_screenshare_producer_webview:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    iget-object v1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->configure(Lcom/sightcall/universal/model/Session;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    sget v1, Lcom/sightcall/universal/R$id;->universal_screenshare_producer_webview_progress:I

    invoke-virtual {v4, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->setProgressBar(Landroid/view/View;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->restore(Landroid/os/Bundle;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_call_local_bar:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/CallButtonBar;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0, p1, v2}, Lcom/sightcall/universal/internal/view/CallButtonBar;->build(Lcom/sightcall/universal/model/Session;Z)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {p0, v4}, Lcom/sightcall/universal/internal/view/CallButtonBar;->setOnCallButtonClickListener(Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_call_bar_remote:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/CallButtonBar;

    iput-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->build(Lcom/sightcall/universal/model/Session;Z)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {p0, v4}, Lcom/sightcall/universal/internal/view/CallButtonBar;->setOnCallButtonClickListener(Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object p1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne p0, p1, :cond_3

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1(Z)V

    new-instance p1, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    iget-object v0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p1, v4}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->setOnQuickActionListener(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnQuickActionListener;)V

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p1, v4}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->setOnMessageClickListener(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageClickListener;)V

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p1, v4}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->setOnMessageLongClickListener(Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$OnMessageLongClickListener;)V

    sget p1, Lcom/sightcall/universal/R$id;->universal_overlay_messages:I

    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    iput-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    new-instance p1, Lcom/sightcall/universal/internal/messaging/CenterItemDecoration;

    invoke-direct {p1}, Lcom/sightcall/universal/internal/messaging/CenterItemDecoration;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;)V

    sget p0, Lcom/sightcall/universal/R$id;->universal_fitSystemWindows:I

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/view/ViewUtils;->addPaddingTakenByFitSystemWindows(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->rootView:Landroid/widget/FrameLayout;

    iget-object v0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v6, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v7, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->rootView:Landroid/widget/FrameLayout;

    iget-object v8, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    iget-object v9, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    iget-object v10, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iget-object v11, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-static/range {v5 .. v11}, Lcom/sightcall/universal/internal/ui/ViewOrder;->reorderIfNeeded(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Landroid/widget/FrameLayout;Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;Landroid/view/ViewGroup;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getShouldSendGuestGpsOnStartup()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest()Lcom/sightcall/universal/internal/model/GpsRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STOP_LOCATION:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_4
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->REQUEST_GEOLOCATION:Lcom/sightcall/common/DataChannelAction;

    new-instance v0, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v5, 0xea60

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0, v2, v2}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStart()V

    iget-object p0, v4, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->onGuestGpsOnStartupSent()V

    :cond_5
    return-void
.end method

.method private deactivateLiveSentencesCoordinator()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveSentencesCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0, v1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->detachFrom(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveSentencesCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    return-void
.end method

.method private eraseVideoDrawings()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    return-void
.end method

.method private executeMediaCaptureEventFromCamera(Lcom/sightcall/pratik/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/sightcall/pratik/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoSuccess(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sightcall/pratik/Result$Error;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoError()V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->V()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->mediaCaptureEventFromCamera(Lcom/sightcall/pratik/Result;)V

    :cond_1
    return-void
.end method

.method private executeMediaCaptureEventFromGallery(Lcom/sightcall/pratik/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/sightcall/pratik/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->onActivityResultPicture(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sightcall/pratik/Result$Error;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->CANCELLED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->V()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->mediaCaptureEventFromGallery(Lcom/sightcall/pratik/Result;)V

    :cond_1
    return-void
.end method

.method private executeMediaCaptureVideoFromGalleryObserver(Lcom/sightcall/pratik/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/sightcall/pratik/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestVideoSuccess(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sightcall/pratik/Result$Error;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->CANCELLED_VIDEO:Lcom/sightcall/common/DataChannelAction;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->V()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->mediaCaptureEventVideoFromGallery(Lcom/sightcall/pratik/Result;)V

    :cond_1
    return-void
.end method

.method private finishAndRemoveTaskOrFinishAffinity()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private finishOrRecreate()Z
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->shouldFinish(Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "CallActivity started while no active call, finish()"

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishAndRemoveTaskOrFinishAffinity()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->shouldFinish(Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "CallActivity started with stalled call reference, recreate()"

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/sightcall/universal/internal/ui/CallActivity;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->callActivityInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/ui/CallActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVideoProducer()Lnet/rtccloud/sdk/VideoProducer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    return-object p0
.end method

.method private getVideoProducerCameraView()Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    instance-of v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    return-object p0
.end method

.method private handleProposition(Lcom/sightcall/universal/internal/proposition/Proposition;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/proposition/Proposition$State;->CREATED:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/proposition/Proposition;->is(Lcom/sightcall/universal/internal/proposition/Proposition$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Lcom/sightcall/universal/internal/proposition/Proposition;)V

    :cond_0
    return-void
.end method

.method private handleVideoStateAfterShare()V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isVideoStateOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->restartVideo()V

    :cond_0
    return-void
.end method

.method private initializeLocationSettingsLauncher()V
    .locals 3

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lgi;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lgi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->locationSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initializeMediaProjectionLauncher()V
    .locals 3

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lgi;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lgi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->startMediaProjection:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initializeRequestPermissionsLauncher()V
    .locals 3

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lgi;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lgi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->requestPermissionsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initializeResolutionForResultLauncher()V
    .locals 3

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lgi;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lgi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->resolutionForResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initiateAndActivateLiveSentencesCoordinator()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    sget v1, Lcom/sightcall/universal/R$id;->universal_live_sentences_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->createLiveSentencesCoordinator(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveSentencesCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0, p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->attachTo(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->start()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    :cond_0
    return-void
.end method

.method private static synthetic instrumented$0$createUi$-Landroid-os-Bundle--V(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$createUi$8(Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private synthetic lambda$createUi$5()Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0, v1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->detachFrom(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$createUi$6()Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0, v1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->detachFrom(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$createUi$7()Lkotlin/Unit;
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    sget v1, Lcom/sightcall/universal/R$id;->universal_history_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    new-instance v3, Ldi;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-direct {v2, v3}, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1, v2}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->createHistoryCoordinator(Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0, v1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->attachTo(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->historyCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->start()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$createUi$8(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    sget v0, Lcom/sightcall/universal/R$id;->universal_panel_setting_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    new-instance v2, Ldi;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-direct {v1, v2}, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v2, Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    new-instance v3, Ldi;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-direct {v2, v3}, Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->createSettingsPanelCoordinator(Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {p1, v0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->attachTo(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->settingsPanelCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->start()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    :cond_0
    return-void
.end method

.method private lambda$initializeLocationSettingsLauncher$2(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->onActivityResultEnableGps(I)V

    :cond_0
    return-void
.end method

.method private lambda$initializeMediaProjectionLauncher$1(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastPermissionListener:Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;

    if-eqz p0, :cond_0

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;->onResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeRequestPermissionsLauncher$4(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->checkLocationPermission()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLocationService()V

    return-void

    :cond_0
    sget-object p1, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION denied!"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    return-void
.end method

.method private lambda$initializeResolutionForResultLauncher$3(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->checkLocationPermission()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLocationService()V

    return-void

    :cond_0
    sget-object p1, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION denied!"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCallButtonClickLocal$10()Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->initiateAndActivateLiveSentencesCoordinator()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLiveTranslation()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveSentencesCoordinator:Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopLiveTranslation()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->deactivateLiveSentencesCoordinator()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onForwardInbandDataChannel$16()Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$onRequestPhotoError$13()Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$showShareMediaDialog$11(Lcom/sightcall/sharemedia/ShareMediaDialog$Result;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePromptDisplayed:Z

    :cond_0
    instance-of v0, p1, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoFromCamera()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoFromGallery()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestVideoFromGallery()V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onShareDialogCancelled()V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$startPhotoFromCamera$12(Lcom/sightcall/pratik/Result;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->mediaCaptureEventFromCamera(Lcom/sightcall/pratik/Result;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$startPhotoFromGallery$14(Lcom/sightcall/pratik/Result;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->mediaCaptureEventFromGallery(Lcom/sightcall/pratik/Result;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$startScreenCastWithMediaProjection$20(Landroid/app/Service;ILandroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SCREENCAST_ENTER:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SCREENCAST_ACCEPT:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->startService(Landroid/app/Service;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iput-object v0, p1, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/util/Utils;->requestScreenshareWithOrWithoutVideo(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-static {p0, p2, p3, p1}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->load(Landroid/content/Context;ILandroid/content/Intent;Lnet/rtccloud/sdk/ScreenshareModule;)V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onScreencastStarted(Lcom/sightcall/universal/model/Session;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->unBindService()V

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SCREENCAST_DENY:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startScreenCastWithMediaProjection$21(Landroid/app/Service;)Lkotlin/Unit;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/ui/a;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/internal/ui/a;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/app/Service;)V

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->requestScreenCast(Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$startVideoFromGallery$15(Lcom/sightcall/pratik/Result;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->mediaCaptureEventVideoFromGallery(Lcom/sightcall/pratik/Result;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$stopGlobalShare$18()Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$stopShareWeb$19()Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$switchUserUi$17(Lnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p1

    instance-of v0, p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void
.end method

.method private synthetic lambda$updateScreenshareConsumer$9(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private lockOrientationScreen()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isScreenOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isScreenOrientationLocked:Z

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private manageActivityResult()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->initializeMediaProjectionLauncher()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->initializeLocationSettingsLauncher()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->initializeResolutionForResultLauncher()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->initializeRequestPermissionsLauncher()V

    return-void
.end method

.method private ocr(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "agent"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    check-cast v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->requestOcr(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void

    :cond_0
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method private onActivityResultEnableGps(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->isGPSEnabled()Z

    move-result p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLocationService()V

    return-void

    :cond_1
    sget-object p0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLocationService()V

    return-void
.end method

.method private onActivityResultPicture(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->loadUri(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object p1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v1, p1, Lcom/sightcall/universal/model/CallParameters;->restartVideoAfterPicture:Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v1, p1, Lcom/sightcall/universal/model/CallParameters;->videoStopPending:Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->stop()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onBackground()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->clearUnreadTimeout()V

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->releaseUi()V

    return-void
.end method

.method private onCallButtonClickLocal(Lcom/sightcall/universal/internal/view/CallButton;)V
    .locals 4

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$com$sightcall$universal$internal$view$CallButton:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessagesRead()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object p1

    instance-of p1, p1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->unBindService()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    new-instance v2, Ldi;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->stopScreenCast(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/DataChannelModule;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startScreencast()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ConferenceModule;->recording()Lnet/rtccloud/sdk/RecordingModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/RecordingModule;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/sightcall/universal/scenario/steps/CallStep;->success:Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;->recording()Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Entity;->getUrl()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep;->mode:Lnet/rtccloud/sdk/RecordingModule$Mode;

    invoke-virtual {p1, p0, v0}, Lnet/rtccloud/sdk/RecordingModule;->start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/RecordingModule;->isPaused()Z

    move-result v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onRecordingPauseResume(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/RecordingModule;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/RecordingModule;->resume()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lnet/rtccloud/sdk/RecordingModule;->pause()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->snapshot()V

    return-void

    :pswitch_4
    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->restartVideo()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopGlobalShare()V

    return-void

    :pswitch_5
    invoke-static {p0}, Lcom/sightcall/universal/util/Utils;->promptHangup(Landroid/content/Context;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p1

    instance-of v1, p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashEnabled()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopLight(Z)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoFromCamera()V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPlayer()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showShareMediaDialog()V

    return-void

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPicture()V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p1

    instance-of v1, p1, Lcom/sightcall/common/MyVideoProducer;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    check-cast p1, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {p1}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopHold(Z)V

    :cond_8
    :goto_1
    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->route()Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->next()Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->route(Lnet/rtccloud/sdk/AudioModule$AudioRoute;)V

    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->switchCameraSource()V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopCamera(ZZ)V

    return-void

    :pswitch_e
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Participant;->isMuted()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/Participant;->mute(Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    :goto_2
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-interface {v1, p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onMicro(Lcom/sightcall/universal/model/Session;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method private onCallButtonClickRemote(Lcom/sightcall/universal/internal/view/CallButtonImageView;Lcom/sightcall/universal/internal/view/CallButton;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$com$sightcall$universal$internal$view$CallButton:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->saveMedia()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopShare()V

    return-void

    :pswitch_2
    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0, p2, p1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->show(Landroid/app/Activity;Lcom/sightcall/universal/model/Session;Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->SELECT_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->unBindService()V

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_3
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->START_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SNAPSHOT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->prepareForSnapshot()V

    return-void

    :cond_5
    :goto_1
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopShare()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_LIGHT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_6
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->START_LIGHT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->SELECT_PHOTO:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_8
    :goto_2
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_PLAYER:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_a
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onRemotePickerRequested(Lcom/sightcall/universal/model/Session;)V

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->START_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_b
    :goto_3
    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->getSource()I

    move-result p0

    sget p1, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->SOURCE_JPEG:I

    if-ne p0, p1, :cond_c

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->START_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_c
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STOP_HOLD:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->unlockOrientationScreen()V

    return-void

    :cond_d
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->START_HOLD:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lockOrientationScreen()V

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    sget-object p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    if-ne p0, p1, :cond_e

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->SET_CAMERA_REAR:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_e
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->SET_CAMERA_FRONT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_f
    :goto_4
    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_10
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->START_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted()Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOP_MUTE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    :cond_11
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->START_MUTE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onForeground()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void
.end method

.method private onRequestAutoFocus()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    instance-of v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->onRequestFocus()V

    :cond_0
    return-void
.end method

.method private onRequestPhotoError()V
    .locals 4

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->CANCELLED_PHOTO:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isShareViewFinderDisplayed:Z

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object v1, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    new-instance v2, Ldi;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->resumePendingScreenShareOrStop(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private onRequestPhotoSuccess(Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTED_PHOTO:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    iput-object p1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isShareViewFinderDisplayed:Z

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->onActivityResultPicture(Landroid/net/Uri;)V

    return-void
.end method

.method private onRequestVideoSuccess(Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTED_VIDEO:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isShareVideoGalleryDisplayed:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->newState(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->resetState()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->loadUri(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->start()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void
.end method

.method private pausePlayer()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->pause()V

    return-void
.end method

.method private static playShutterSound()V
    .locals 2

    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    return-void
.end method

.method private releaseParticipantUi(Lnet/rtccloud/sdk/Participant;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Participant;->videoConsumer()Lnet/rtccloud/sdk/VideoConsumer;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v1

    instance-of v2, v1, Lcom/sightcall/common/MyVideoProducer;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {v1}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sightcall/universal/util/UiUtils;->isViewChildOf(Landroid/view/View;Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Participant;->releaseVideoConsumer()V

    :cond_2
    :goto_0
    return-void
.end method

.method private releaseUi()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->consumer()Lnet/rtccloud/sdk/ScreenshareConsumer;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p0}, Lcom/sightcall/universal/util/UiUtils;->isViewChildOf(Landroid/view/View;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->releaseConsumer()V

    :cond_1
    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p0}, Lcom/sightcall/universal/util/UiUtils;->isViewChildOf(Landroid/view/View;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->releaseProducer()V

    :cond_2
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ConferenceModule;->participants()[Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/sightcall/universal/internal/ui/CallActivity;->releaseParticipantUi(Lnet/rtccloud/sdk/Participant;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->releaseParticipantUi(Lnet/rtccloud/sdk/Participant;)V

    return-void
.end method

.method private requestSwitchCamera(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    instance-of v1, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SETTED_CAMERA_FRONT:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void

    :cond_2
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SETTED_CAMERA_REAR:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->show(Landroidx/fragment/app/FragmentManager;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    return-void
.end method

.method private restartVideo()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getShouldRestartCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    const-string v2, "Restarting video"

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void
.end method

.method private resumePlayer()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->resume()V

    return-void
.end method

.method private saveMedia()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-eq v1, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Usecase;->savePicture()Lcom/sightcall/universal/agent/Usecase$SavePicture;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Unable to saveMedia(): [SavePicture] is null"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Unable to saveMedia(): [caseReportId] is null"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v6, v1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->UNKNOWN:Lcom/sightcall/universal/media/Metadata$Origin;

    iget-object v2, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v3

    iget-object v5, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v5}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v5

    invoke-virtual {v5}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v8

    instance-of v9, v8, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    move-object v11, v8

    check-cast v11, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v11}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v11

    goto :goto_0

    :cond_3
    move-object v11, v10

    :goto_0
    invoke-static {v8}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v12, :cond_5

    if-eqz v9, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isBack()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    move v11, v14

    goto :goto_2

    :cond_5
    :goto_1
    move v11, v13

    :goto_2
    invoke-virtual {v5}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v5}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v11, :cond_7

    :cond_6
    move v12, v13

    goto :goto_3

    :cond_7
    move v12, v14

    :goto_3
    invoke-virtual {v5}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v5}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v11, :cond_9

    :cond_8
    move v5, v13

    goto :goto_4

    :cond_9
    move v5, v14

    :goto_4
    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v1, v1, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v2, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode:[I

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    sget-object v1, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->INVALID:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v13, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PICTURE:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_6

    :cond_b
    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    :cond_c
    :goto_6
    move-object v5, v1

    move-object v1, v10

    move v13, v14

    goto/16 :goto_8

    :cond_d
    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingPicture()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PICTURE:Lcom/sightcall/universal/media/Metadata$Origin;

    :goto_7
    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_8

    :cond_e
    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingPhoto()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_7

    :cond_f
    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_7

    :cond_10
    invoke-virtual {v2}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v11

    if-eqz v11, :cond_12

    instance-of v1, v3, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    if-eqz v1, :cond_11

    check-cast v3, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->URL:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_6

    :cond_11
    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported Screenshare producer for saveMedia: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {v2}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->myScreenshareConsumerView:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingUrl()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->URL:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_7

    :cond_13
    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingPicture()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PICTURE:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_7

    :cond_14
    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingPhoto()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_7

    :cond_15
    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->PHOTO:Lcom/sightcall/universal/media/Metadata$Origin;

    goto :goto_7

    :cond_16
    if-eqz v5, :cond_19

    invoke-static {v8}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->VIDEO:Lcom/sightcall/universal/media/Metadata$Origin;

    goto/16 :goto_6

    :cond_17
    if-eqz v9, :cond_18

    check-cast v8, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v8}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->CAMERA:Lcom/sightcall/universal/media/Metadata$Origin;

    goto/16 :goto_6

    :cond_18
    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported Video producer for saveMedia: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_19
    if-eqz v12, :cond_c

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v1, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->VIDEO:Lcom/sightcall/universal/media/Metadata$Origin;

    goto/16 :goto_7

    :cond_1a
    sget-object v1, Lcom/sightcall/universal/media/Metadata$Origin;->CAMERA:Lcom/sightcall/universal/media/Metadata$Origin;

    goto/16 :goto_7

    :goto_8
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_b

    :cond_1b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v2, :cond_20

    if-nez v3, :cond_1c

    goto :goto_b

    :cond_1c
    iget-object v2, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v13, :cond_1d

    iget-object v2, v2, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest()Lcom/sightcall/universal/internal/model/GpsRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/GpsRequest;->location()Landroid/location/Location;

    move-result-object v2

    goto :goto_9

    :cond_1d
    iget-object v2, v2, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v2, v2, Lcom/sightcall/universal/model/CallParameters;->lastLocation:Landroid/location/Location;

    :goto_9
    const-wide/16 v8, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    goto :goto_a

    :cond_1e
    move-wide v10, v8

    :goto_a
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    :cond_1f
    iget-object v2, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v3, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    move-wide/from16 v16, v10

    move-wide v10, v8

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v11}, Lcom/sightcall/universal/media/Metadata;->create(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Ljava/lang/String;Lcom/sightcall/universal/media/Metadata$Origin;Lcom/sightcall/universal/agent/Usecase;Lcom/sightcall/universal/agent/Usecase$SavePicture;DD)Lcom/sightcall/universal/media/Metadata;

    move-result-object v2

    invoke-static {}, Lcom/sightcall/universal/internal/ui/CallActivity;->playShutterSound()V

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->toastPicture(Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/sightcall/universal/internal/ui/CallActivity$SaveMediaAndRecycleTask;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2, v14}, Lcom/sightcall/universal/internal/ui/CallActivity$SaveMediaAndRecycleTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;I)V

    new-array v0, v14, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_20
    :goto_b
    return-void
.end method

.method private saveVideoState()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isVideoStateOn:Z

    return-void
.end method

.method private seekPlayer(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->seekToRelative(I)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->showBar()V

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static shouldFinish(Lnet/rtccloud/sdk/Call;)Z
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v2, v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq v0, v2, :cond_6

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p0

    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method private static shouldKeepButtonBarDisplayed(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v1, v2, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object p0

    instance-of p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object p0, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object p1, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne p0, p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method private showAndHideSystemUi()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sightcall/universal/util/SystemUiHelper;->show()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->shouldKeepButtonBarDisplayed(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/sightcall/universal/R$integer;->universal_call_button_bar_timeout_millis:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/util/SystemUiHelper;->delayHide(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showCollimator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->showCollimator(Z)V

    :cond_0
    return-void
.end method

.method private showShareMediaDialog()V
    .locals 3

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTING_MEDIA:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePromptDisplayed:Z

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, v1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onShareStarted(Lcom/sightcall/universal/model/Session;)V

    sget-object v0, Lcom/sightcall/sharemedia/ShareMediaDialog;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog;

    new-instance v1, Lei;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lei;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v0, p0, v1}, Lcom/sightcall/sharemedia/ShareMediaDialog;->show(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private snapshot()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    instance-of v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->requestSnapshot()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x14000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private startLiveQr()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducerCameraView()Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->startLiveQr()V

    return-void
.end method

.method private startLiveTranslation()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->startTranslation()Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->RTCC_RESPONSE_TRANSLATION:Lcom/sightcall/common/DataChannelAction;

    sget-object v1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->Companion:Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;

    new-instance v2, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;-><init>(ZZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;->toJson(Lcom/sightcall/universal/internal/model/LiveTranslationResponse;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onLiveTranslationStart(Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method private startLocationService()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->startLocationService(Landroid/app/Activity;)V

    return-void
.end method

.method private startPhotoFromCamera()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v1, v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoProducerCameraView:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    new-instance v1, Lfi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SELECTING_PHOTO:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isShareViewFinderDisplayed:Z

    sget-object v0, Lcom/sightcall/mediacapture/StartMediaCapture;->INSTANCE:Lcom/sightcall/mediacapture/StartMediaCapture;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/StartMediaCapture;->forCameraPhoto()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    move-result-object v0

    sget-object v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->Companion:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;

    new-instance v2, Lei;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lei;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;->setResultListener(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->addFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private startPhotoFromGallery()V
    .locals 4

    sget-object v0, Lcom/sightcall/mediacapture/StartMediaCapture;->INSTANCE:Lcom/sightcall/mediacapture/StartMediaCapture;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/StartMediaCapture;->forGalleryPhoto()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    move-result-object v0

    sget-object v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->Companion:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;

    new-instance v2, Lei;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lei;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;->setResultListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->SELECTING_PICTURE:Lcom/sightcall/common/DataChannelAction;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->addFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private startScreenCastWithMediaProjection()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    new-instance v1, Lei;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lei;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->bindService(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private startScreencast()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startScreenCastWithMediaProjection()V

    return-void
.end method

.method private startShareWeb(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    sget-object v1, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iput-object p1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/util/Utils;->requestScreenshareWithOrWithoutVideo(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STARTED_SHARE:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    :cond_2
    :goto_0
    return-void
.end method

.method private startStopCamera(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity$6;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;Lnet/rtccloud/sdk/VideoModule;)V

    invoke-static {p2, p1, v1}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->show(Landroidx/fragment/app/FragmentManager;ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->start()V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p2

    invoke-interface {p2}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p2, v0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCameraStarted(Lcom/sightcall/universal/model/Session;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->setShouldRestartCamera(Z)V

    return-void

    :cond_1
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STARTED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p1

    instance-of p2, p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->resetZoom()V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/UvcProducer;->resetZoom()V

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->stop()V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCameraStopped(Lcom/sightcall/universal/model/Session;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->setShouldRestartCamera(Z)V

    return-void

    :cond_5
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STOPPED_CAMERA:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method private startStopHold(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    instance-of v1, v0, Lcom/sightcall/common/MyVideoProducer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sightcall/common/MyVideoProducer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result v1

    if-eqz p1, :cond_4

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/sightcall/common/MyVideoProducer;->pause()V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCameraPaused(Lcom/sightcall/universal/model/Session;)V

    return-void

    :cond_3
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STARTED_HOLD:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/sightcall/common/MyVideoProducer;->resume()V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCameraResumed(Lcom/sightcall/universal/model/Session;)V

    return-void

    :cond_5
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STOPPED_HOLD:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method private startStopLight(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    instance-of v1, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setFlashEnabled(Z)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_LIGHT:Lcom/sightcall/common/DataChannelAction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_LIGHT:Lcom/sightcall/common/DataChannelAction;

    :goto_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onTorch(Lcom/sightcall/universal/model/Session;Z)V

    :cond_1
    return-void
.end method

.method private startVideoFromGallery()V
    .locals 4

    sget-object v0, Lcom/sightcall/mediacapture/StartMediaCapture;->INSTANCE:Lcom/sightcall/mediacapture/StartMediaCapture;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/StartMediaCapture;->forGalleryVideo()Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    move-result-object v0

    sget-object v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->Companion:Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;

    new-instance v2, Lei;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lei;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment$Companion;->setResultListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->SELECTING_VIDEO:Lcom/sightcall/common/DataChannelAction;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sightcall/universal/model/CallParameters;->isShareVideoGalleryDisplayed:Z

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->addFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private static step()Lcom/sightcall/universal/scenario/Step;
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    return-object v0
.end method

.method private stopGlobalShare()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPlayer()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->INVALID:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->unload(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->unloadUrl()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object v2, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object v2, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    new-instance v2, Ldi;

    invoke-direct {v2, p0, v3}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->resumePendingScreenShareOrStop(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private stopLiveQr()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducerCameraView()Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->stopLiveQr()V

    return-void
.end method

.method private stopLiveTranslation()V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->stopTranslation()Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->RTCC_RESPONSE_TRANSLATION:Lcom/sightcall/common/DataChannelAction;

    sget-object v1, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;->Companion:Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;

    new-instance v2, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v4}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse;-><init>(ZZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;->toJson(Lcom/sightcall/universal/internal/model/LiveTranslationResponse;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onLiveTranslationStopped(Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method private stopPicture()V
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->handleVideoStateAfterShare()V

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method private stopPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->unloadUri()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    return-void
.end method

.method private stopShare()V
    .locals 2

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOP_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOP_SNAPSHOT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {v0}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->unBindService()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOP_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->restartVideo()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopGlobalShare()V

    return-void
.end method

.method private stopShareWeb()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v2, v2, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne v2, v0, :cond_0

    check-cast v1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->unloadUrl()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    new-instance v2, Ldi;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->resumePendingScreenShareOrStop(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_SHARE:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method private switchCameraSource()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-nez v1, :cond_0

    return-void

    .line 63
    :cond_0
    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    .line 64
    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    .line 66
    :goto_1
    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->switchCameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    return-void
.end method

.method private switchCameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    instance-of v1, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCameraSwitch(Lcom/sightcall/universal/model/Session;Z)V

    return-void
.end method

.method private switchUserUi()Lkotlin/Unit;
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object v2

    iget-boolean v3, v0, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    iget-boolean v2, v0, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/Participant;->mute(Z)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sightcall/universal/internal/view/CallButtonBar;->build(Lcom/sightcall/universal/model/Session;Z)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$VideoCapture;->FRONT:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    if-ne v0, v2, :cond_1

    invoke-static {v3}, Lcom/sightcall/pratik/camera/CameraUtilsKt;->isCameraAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sightcall/pratik/camera/CameraUtilsKt;->isCameraAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lb5;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v1, v0, v4}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->stop()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private toastPicture(Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$dimen;->universal_toast_thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    int-to-float v1, v0

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$layout;->universal_toast_picture_saved:I

    sget v3, Lcom/sightcall/universal/R$id;->container:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x11

    invoke-virtual {p1, p0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private toggleSystemUi()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sightcall/universal/util/SystemUiHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper;->hide()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    return-void
.end method

.method private unlockOrientationScreen()V
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isScreenOrientationLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->isScreenOrientationLocked:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private updateAll()V
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    sget-object v1, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->rootView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    iget-object v6, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    iget-object v7, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iget-object v8, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-static/range {v2 .. v8}, Lcom/sightcall/universal/internal/ui/ViewOrder;->reorderIfNeeded(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Landroid/widget/FrameLayout;Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateProgressivex()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateVideoProducer()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateVideoConsumers()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateScreenshareConsumer()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateScreenshareProducer()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateLabels()V

    return-void
.end method

.method private updateFloatingContainers()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->onVisibilityChange()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->onVisibilityChange()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->onVisibilityChange()V

    return-void
.end method

.method private updateLabels()V
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v4}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v4

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v5

    instance-of v5, v5, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v5, v5, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v5, v5, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object v6, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne v5, v6, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callStatusScreencasting:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-static {v1, v5}, Lcom/sightcall/universal/internal/ui/CallActivity;->applyVisibilityWithDelayedFadeIn(Landroid/widget/ImageView;I)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callStatusNoMedia:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-static {p0, v3}, Lcom/sightcall/universal/internal/ui/CallActivity;->applyVisibilityWithDelayedFadeIn(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private updateProgressivex()V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateScreenshareConsumer()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myScreenshareConsumerView:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myScreenshareConsumerView:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    new-instance v1, Lgi;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lgi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->setDrawingZoneListener(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myScreenshareConsumerView:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/ScreenshareModule;->consumer(Lnet/rtccloud/sdk/ScreenshareConsumer;)V

    :cond_1
    return-void
.end method

.method private updateScreenshareProducer()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v2, v2, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    invoke-static {v2}, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->isWeb(Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;)Z

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->setVisibility(I)V

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer(Lnet/rtccloud/sdk/ScreenshareProducer;)V

    :cond_1
    return-void
.end method

.method private updateVideoConsumers()V
    .locals 10

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ConferenceModule;->participants()[Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    array-length v3, v0

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v4, v5}, Lcom/sightcall/universal/internal/util/Utils;->canMainVideoConsumerGoThumbnail(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v3, -0x1

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    if-nez v4, :cond_2

    if-lez v3, :cond_2

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v7

    :goto_1
    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    const/16 v8, 0x8

    if-eqz v2, :cond_3

    move v9, v7

    goto :goto_2

    :cond_3
    move v9, v8

    :goto_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_6

    if-eqz v1, :cond_4

    array-length v2, v0

    if-lez v2, :cond_5

    aget-object v2, v0, v7

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/Participant;->videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Call;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/Participant;->videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->updatePosition()V

    :cond_6
    if-eqz v1, :cond_9

    if-lez v5, :cond_7

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v6, v7

    :goto_4
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move v7, v8

    :goto_5
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    invoke-virtual {v1, v0, v4}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->updateConsumers([Lnet/rtccloud/sdk/Participant;Z)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->updatePosition()V

    :cond_9
    return-void
.end method

.method private updateVideoProducer()V
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean v0, v0, Lcom/sightcall/universal/model/CallParameters;->videoStopPending:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sightcall/uvc/DeviceManager;->getDevice()Lcom/sightcall/uvc/Device;

    move-result-object v5

    if-eqz v2, :cond_1

    move v5, v3

    move v2, v4

    move v3, v2

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean v2, v2, Lcom/sightcall/universal/model/CallParameters;->allowUsbCamera:Z

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lcom/sightcall/uvc/Device;->hasPermission()Z

    move-result v2

    move v3, v4

    move v5, v3

    goto :goto_1

    :cond_2
    move v2, v4

    move v5, v2

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    :cond_3
    iget-object v6, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoProducerCameraView:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    const/16 v7, 0x8

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iget-object v6, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoProducerCameraView:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v3, v6}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->setActiveProducer(Lcom/sightcall/common/MyVideoProducer;)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoProducerCameraView:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v1, v3}, Lnet/rtccloud/sdk/VideoModule;->producer(Lnet/rtccloud/sdk/VideoProducer;)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getShouldRestartCamera()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->stop()V

    :cond_5
    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->uvcPreview:Lcom/sightcall/universal/internal/view/UvcPreview;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sightcall/universal/internal/ui/CallActivity;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v2

    instance-of v3, v2, Lcom/sightcall/universal/scenario/steps/CallStep;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {v2}, Lcom/sightcall/universal/scenario/steps/CallStep;->getUvcProducer()Lcom/sightcall/universal/internal/view/UvcProducer;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->uvcPreview:Lcom/sightcall/universal/internal/view/UvcPreview;

    invoke-virtual {v3, v2}, Lcom/sightcall/universal/internal/view/UvcPreview;->restore(Lcom/sightcall/universal/internal/view/UvcProducer;)V

    invoke-virtual {v2, p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->setOnCameraCallback(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;)V

    :cond_7
    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    invoke-virtual {v3, v2}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->setActiveProducer(Lcom/sightcall/common/MyVideoProducer;)V

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/VideoModule;->producer(Lnet/rtccloud/sdk/VideoProducer;)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->uvcPreview:Lcom/sightcall/universal/internal/view/UvcPreview;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/UvcPreview;->trigger()V

    :cond_8
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v2

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    move v3, v4

    goto :goto_4

    :cond_9
    move v3, v7

    :goto_4
    invoke-interface {v2, v3}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->setVisibility(I)V

    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->getVideoProducer()Lcom/sightcall/common/MyVideoProducer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->setActiveProducer(Lcom/sightcall/common/MyVideoProducer;)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->getVideoProducer()Lcom/sightcall/common/MyVideoProducer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/VideoModule;->producer(Lnet/rtccloud/sdk/VideoProducer;)V

    :cond_a
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v4, v7

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->updatePosition()V

    return-void
.end method

.method public static synthetic v(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/pratik/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->executeMediaCaptureEventFromCamera(Lcom/sightcall/pratik/Result;)V

    return-void
.end method

.method public static synthetic w(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startPhotoFromCamera()V

    return-void
.end method

.method public static synthetic x(Lcom/sightcall/universal/internal/ui/CallActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$onCreate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic y(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/app/Service;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$startScreenCastWithMediaProjection$21(Landroid/app/Service;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/sightcall/universal/internal/ui/CallActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->lambda$initializeResolutionForResultLauncher$3(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private zoomCamera(F)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->getVideoProducer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    instance-of v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setZoom(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private zoomCamera(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 41
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ViewUtils;->intPercentToFloatPercent(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->zoomCamera(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private zoomedCamera()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->updateCameraZoom()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventIgnore:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventInitialX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventInitialY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventSlop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->toggleSystemUi()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventIgnore:Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventInitialX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventInitialY:F

    :cond_3
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventIgnore:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventIgnore:Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->getVideoPlayerBarView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->getVideoPlayerBarView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    invoke-virtual {v3, p1}, Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;->isHit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->myVideoProducerWrapper:Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerThumbnailContainer:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventLocation:[I

    invoke-static {v3, v0, v2, v4, v5}, Lcom/sightcall/universal/util/ViewUtils;->isHit(Landroid/view/View;IILandroid/graphics/Rect;[I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dispatchTouchEventIgnore:Z

    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->backPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;->onBackPressed()V

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isShareViewFinderDisplayed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iput-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isShareViewFinderDisplayed:Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoError()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    return-void

    :cond_2
    iget-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    if-ne v1, v3, :cond_3

    iput-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->CANCELLED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    return-void

    :cond_3
    iget-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isShareVideoGalleryDisplayed:Z

    if-ne v1, v3, :cond_4

    iput-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isShareVideoGalleryDisplayed:Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->CANCELLED_VIDEO:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCallButtonClick(Lcom/sightcall/universal/internal/view/CallButtonImageView;Lcom/sightcall/universal/internal/view/CallButton;Z)V
    .locals 7

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCallButtonClick("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    if-nez v0, :cond_1

    sget-object p0, Lcom/sightcall/universal/internal/view/CallButton;->HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

    if-ne p2, p0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->interrupt()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v6, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onUserAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/view/CallButton;ZLnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/model/RemoteState;)V

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/sightcall/universal/internal/ui/CallActivity;->onCallButtonClickRemote(Lcom/sightcall/universal/internal/view/CallButtonImageView;Lcom/sightcall/universal/internal/view/CallButton;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/sightcall/universal/internal/ui/CallActivity;->onCallButtonClickLocal(Lcom/sightcall/universal/internal/view/CallButton;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishAndRemoveTaskOrFinishAffinity()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STARTED_MUTE:Lcom/sightcall/common/DataChannelAction;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOPPED_MUTE:Lcom/sightcall/common/DataChannelAction;

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    return-void
.end method

.method public onCameraPause()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    invoke-static {p0}, Lcom/sightcall/universal/util/UiUtils;->lockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method public onCameraResume()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/UiUtils;->requestOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCameraSnapshot(Ljava/io/File;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->onActivityResultPicture(Landroid/net/Uri;)V

    return-void
.end method

.method public onCameraStart()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/UiUtils;->requestOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCameraStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/UiUtils;->requestOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishAndRemoveTaskOrFinishAffinity()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    new-instance v0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->manageActivityResult()V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModelFactory:Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/ui/CallViewModel;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->shouldFinish(Lnet/rtccloud/sdk/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishAndRemoveTaskOrFinishAffinity()V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    invoke-static {p0}, Lcom/sightcall/universal/util/Utils;->applySecureFlag(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-direct {v2}, Lcom/sightcall/universal/internal/model/RemoteState;-><init>()V

    :goto_1
    iput-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object v2

    iput-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v2}, Lcom/sightcall/universal/internal/messaging/Messaging;->from(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/messaging/Messaging;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/util/UiUtils;->enableJumpcutRotationAnimation(Landroid/view/Window;)V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->start()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->createUi(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    invoke-interface {p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getAutoTranslate()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;->isAutoTranslateActive()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->initiateAndActivateLiveSentencesCoordinator()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLiveTranslation()V

    :cond_4
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getVisible()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->distinctUntilChanged()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->a:Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lgi;

    invoke-direct {v2, p0, v1}, Lgi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallActivity$1;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->a0(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    new-instance p1, Lii;

    invoke-direct {p1, p0, v1}, Lii;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getMediaCaptureEventFromGallery()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lii;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lii;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getMediaCaptureEventFromCamera()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lii;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lii;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getMediaCaptureEventVideoFromGallery()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/sightcall/universal/internal/ui/CallActivity;->callActivityInstance:Ljava/lang/ref/WeakReference;

    return-void

    :cond_5
    const-string p0, "scheduler == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/util/SystemUiHelper;->removeQueuedRunnables()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->setAnchor(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->coordinator:Lcom/sightcall/universal/CallCoordinatorImpl;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->release()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    :cond_3
    sput-object v1, Lcom/sightcall/universal/internal/ui/CallActivity;->callActivityInstance:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onDeviceAttached(Lcom/sightcall/uvc/Device;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceAttached() called with: device = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    invoke-static {p0, p1, v0}, Lcom/sightcall/universal/internal/util/Utils;->requestUsbCameraIfNeeded(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/CallParameters;)V

    return-void
.end method

.method public onDeviceDetached(Lcom/sightcall/uvc/Device;)V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$7;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallActivity$7;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDevicePermissionDenied(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDevicePermissionGranted(Lcom/sightcall/uvc/Device;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDevicePermissionGranted() called with: device = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$8;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallActivity$8;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFloorEvent(Lnet/rtccloud/sdk/event/call/FloorEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateVideoConsumers()V

    return-void
.end method

.method public onForwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object p1, Lcom/sightcall/universal/internal/model/LiveTranslationRequest;->Companion:Lcom/sightcall/universal/internal/model/LiveTranslationRequest$Companion;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/internal/model/LiveTranslationRequest$Companion;->fromJson(Ljava/lang/String;)Lcom/sightcall/universal/internal/model/LiveTranslationRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/LiveTranslationRequest;->getTranslation()Z

    move-result p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    if-eqz p1, :cond_0

    invoke-interface {p2, v1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->enableLiveTranslation(Z)V

    goto/16 :goto_1

    :cond_0
    invoke-interface {p2, v2}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->enableLiveTranslation(Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1, v2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->setSDFOpened(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->V()V

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SDF_CLOSED:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void

    :pswitch_2
    :try_start_0
    sget-object p1, Lcom/sightcall/core/experiences/SightCall;->INSTANCE:Lcom/sightcall/core/experiences/SightCall;

    invoke-static {p2}, Lcom/sightcall/universal/util/OpenSdfMappersKt;->toSDFUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sightcall/core/experiences/SightCall;->getExperience(Landroid/net/Uri;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->addFragment(Landroidx/fragment/app/Fragment;)V

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->SDF_OPENED:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->setSDFOpened(Z)V
    :try_end_0
    .catch Lcom/sightcall/core/experiences/SightCallUnknownUrlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sightcall/pratik/extensions/JsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sightcall/common/DataChannelAction;->SDF_OPEN_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p2, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0, v0, p1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    new-instance v0, Ldi;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-virtual {p1, p2, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->onRoleSwitch(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_4
    invoke-static {}, Lcom/sightcall/capabilities/SwitchRequest;->getInstance()Lcom/sightcall/capabilities/SwitchRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sightcall/capabilities/SwitchRequest;->isSameId(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sightcall/capabilities/SwitchRequest;->getInstance()Lcom/sightcall/capabilities/SwitchRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/capabilities/SwitchRequest;->clear()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/User;->uidLocal()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/sightcall/capabilities/SwitchRequest;->extractUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$5;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/universal/internal/ui/CallActivity$5;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p1, p0, v0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->show(Landroidx/fragment/app/FragmentManager;ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V

    :cond_1
    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    const/4 v2, 0x2

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pid"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object p1, v0

    :goto_0
    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p2

    invoke-virtual {p2}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/universal/internal/ui/CallActivity$3;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;Lnet/rtccloud/sdk/Participant;)V

    invoke-static {p1, v2, v0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->show(Landroidx/fragment/app/FragmentManager;ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    if-eq p1, v1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance p2, Lcom/sightcall/universal/internal/ui/CallActivity$4;

    invoke-direct {p2, p0}, Lcom/sightcall/universal/internal/ui/CallActivity$4;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V

    invoke-static {p1, v2, p2}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->show(Landroidx/fragment/app/FragmentManager;ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V

    goto/16 :goto_1

    :cond_5
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STOPPED_MUTE:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto/16 :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/Participant;->mute(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    goto/16 :goto_1

    :cond_7
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STARTED_MUTE:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopLiveQr()V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLiveQr()V

    goto/16 :goto_1

    :pswitch_a
    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/ar/UniversalAr;->startActivity(Landroid/app/Activity;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/internal/util/Utils;->requestUsbCameraIfNeeded(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/CallParameters;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestAutoFocus()V

    goto/16 :goto_1

    :pswitch_e
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {p1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopCollimator()V

    invoke-direct {p0, v2}, Lcom/sightcall/universal/internal/ui/CallActivity;->showCollimator(Z)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->ocr(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {p1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateCollimator()V

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->showCollimator(Z)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPicture()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->restartVideo()V

    goto/16 :goto_1

    :pswitch_12
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->snapshot()V

    goto/16 :goto_1

    :pswitch_13
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STARTED_SNAPSHOT:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto/16 :goto_1

    :pswitch_14
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v2, p1, Lcom/sightcall/universal/model/CallParameters;->isPendingLocationRequest:Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->updateDataInBandFromGeoLocationRequest(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getDataInBandRequestTimeout()Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/location/LocationDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/Long;)V

    goto/16 :goto_1

    :pswitch_15
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->requestSwitchCamera(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    goto/16 :goto_1

    :pswitch_16
    sget-object p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->requestSwitchCamera(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->zoomedCamera()V

    goto/16 :goto_1

    :pswitch_18
    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->zoomCamera(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_19
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastRepository:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->unBindService()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    new-instance v1, Ldi;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Ldi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->stopScreenCast(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/DataChannelModule;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startScreencast()V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestVideoFromGallery()V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoFromGallery()V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onRequestPhotoFromCamera()V

    goto/16 :goto_1

    :pswitch_1e
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPlayer()V

    goto/16 :goto_1

    :pswitch_1f
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    goto/16 :goto_1

    :pswitch_20
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->pausePlayer()V

    goto :goto_1

    :pswitch_21
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    goto :goto_1

    :pswitch_22
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->resumePlayer()V

    goto :goto_1

    :pswitch_23
    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->seekPlayer(Ljava/lang/String;)V

    return-void

    :pswitch_24
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPicture()V

    goto :goto_1

    :pswitch_25
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showShareMediaDialog()V

    goto :goto_1

    :pswitch_26
    invoke-direct {p0, v2, v2}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopCamera(ZZ)V

    goto :goto_1

    :pswitch_27
    invoke-direct {p0, v1, v2}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopCamera(ZZ)V

    goto :goto_1

    :pswitch_28
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopShareWeb()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopPlayer()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->stopGlobalShare()V

    goto :goto_1

    :pswitch_29
    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/CallActivity;->startShareWeb(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2a
    invoke-direct {p0, v2}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopLight(Z)V

    goto :goto_1

    :pswitch_2b
    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopLight(Z)V

    goto :goto_1

    :pswitch_2c
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->resumed()V

    goto :goto_1

    :pswitch_2d
    invoke-direct {p0, v2}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopHold(Z)V

    goto :goto_1

    :pswitch_2e
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->videoConsumerView:Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->paused()V

    goto :goto_1

    :pswitch_2f
    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->startStopHold(Z)V

    goto :goto_1

    :pswitch_30
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lfi;

    invoke-direct {p2, p0, v1}, Lfi;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

.method public onIncomingMessage(Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->isShown(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity$2;-><init>(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessageAdded(Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    const/4 p0, 0x1

    return p0
.end method

.method public onMessageClick(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessagesRead()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onMessageLongClick(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$MessageViewHolder;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sightcall/universal/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    sget p1, Lcom/sightcall/universal/R$string;->universal_messages_copied_to_clipboard:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public onParticipantEvent(Lnet/rtccloud/sdk/event/call/ParticipantEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateVideoConsumers()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/ParticipantEvent;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/ParticipantEvent;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->isMuted()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STARTED_MUTE:Lcom/sightcall/common/DataChannelAction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOPPED_MUTE:Lcom/sightcall/common/DataChannelAction;

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_1
    return-void
.end method

.method public onParticipantsEvent(Lnet/rtccloud/sdk/event/call/ParticipantsEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateVideoConsumers()V

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onBackground()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->asrBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPlayerBarShown()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    invoke-virtual {v0}, Lcom/sightcall/universal/util/SystemUiHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateFloatingContainers()V

    :cond_0
    return-void
.end method

.method public onPlayerPause()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->PAUSED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onPlayerResume()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->RESUMED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onPlayerStart()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onPlayerStartSeek()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    return-void
.end method

.method public onPlayerStop()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->eraseVideoDrawings()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onProgressivex(Lnet/rtccloud/sdk/event/call/ProgressivexEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->setSource(I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/ProgressivexEvent;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->loadBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const-string v0, "bitmap"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-static {p1, v0, v1}, Lcom/sightcall/universal/internal/util/Utils;->requestProgressivexWithOrWithoutVideo(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/view/ProgressivexImageView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    :cond_0
    return-void
.end method

.method public onPropositionDialogDismissed()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onPropositionDialogDismissed()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/UiUtils;->requestOrientation(Landroid/app/Activity;I)V

    return-void
.end method

.method public onPropositionDialogShown()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onPropositionDialogShown()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sightcall/universal/util/UiUtils;->lockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method public onPropositionEvent(Lcom/sightcall/universal/internal/proposition/Proposition;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->handleProposition(Lcom/sightcall/universal/internal/proposition/Proposition;)V

    return-void
.end method

.method public onQuickActionNegative()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    sget v1, Lcom/sightcall/universal/R$string;->universal_messages_quick_action_negative:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/internal/messaging/Messaging;->send(Ljava/lang/String;Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessagesRead()V

    return-void
.end method

.method public onQuickActionPositive()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    sget v1, Lcom/sightcall/universal/R$string;->universal_messages_quick_action_positive:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/internal/messaging/Messaging;->send(Ljava/lang/String;Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessagesRead()V

    return-void
.end method

.method public onQuickActionReply()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->onMessagesRead()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/messaging/MessagesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onRecordingEvent(Lnet/rtccloud/sdk/event/call/RecordingEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    return-void
.end method

.method public onRemoteStateGpsEvent(Lcom/sightcall/universal/internal/model/GpsRequest$Event;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/GpsRequest$Event;->location()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    sget-object p1, Lcom/sightcall/universal/internal/view/CallButton;->GEOLOCATION:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->find(Lcom/sightcall/universal/internal/view/CallButton;)Lcom/sightcall/universal/internal/view/CallButtonImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Lcom/sightcall/universal/util/UiUtils;->tada(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateCallButtonBar()V

    return-void
.end method

.method public onRequestCameraSourceConfirmation(Lnet/rtccloud/sdk/VideoModule$CameraSource;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->switchCameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    :cond_0
    return-void
.end method

.method public onRequestLocationConfirmation(Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$com$sightcall$universal$internal$location$LocationDialog$LocationDialogResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Timeout;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Timeout;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->stopLocationService()V

    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, v0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onGpsDeclined(Lcom/sightcall/universal/model/Session;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Declined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Declined;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->stopLocationService()V

    return-void

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {p1, v0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onGpsAccepted(Lcom/sightcall/universal/model/Session;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startLocationService()V

    return-void
.end method

.method public onRequestPhotoFromCamera()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->saveVideoState()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startPhotoFromCamera()V

    return-void
.end method

.method public onRequestPhotoFromGallery()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->saveVideoState()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startPhotoFromGallery()V

    return-void
.end method

.method public onRequestVideoFromGallery()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->saveVideoState()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startVideoFromGallery()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishOrRecreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onForeground()V

    invoke-static {p0}, Lcom/sightcall/universal/util/Utils;->applySecureFlag(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->isSDFOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->setSDFOpened(Z)V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->SDF_CLOSED:Lcom/sightcall/common/DataChannelAction;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isPendingLocationRequest:Z

    if-eqz v2, :cond_4

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isPendingLocationRequest:Z

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    instance-of v2, v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    check-cast v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->getDataInBandRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->getDataInBandRequestTimeout()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sightcall/universal/internal/ui/CallViewModel;->updateDataInBandGeoLocationParameters(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->getDataInBandRequestTimeout()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sightcall/universal/internal/location/LocationDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/Long;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/location/LocationDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean v2, v0, Lcom/sightcall/universal/model/CallParameters;->isPendingScreencastRequest:Z

    if-eqz v2, :cond_5

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->isPendingScreencastRequest:Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->startScreencast()V

    :cond_5
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v0, v0, Lcom/sightcall/universal/model/CallParameters;->pendingProposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->handleProposition(Lcom/sightcall/universal/internal/proposition/Proposition;)V

    :cond_6
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Session;->buttonsLocal()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sightcall/universal/util/RealWearUtilsKt;->updateHelpVoiceCommands(Landroid/content/Context;[Lcom/sightcall/universal/internal/view/CallButton;)V

    sget-object v0, Lcom/sightcall/pratik/utils/Utils;->Companion:Lcom/sightcall/pratik/utils/Utils$Companion;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->asrBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.realwear.wearhf.intent.action.SPEECH_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/sightcall/pratik/utils/Utils$Companion;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STARTED_MUTE:Lcom/sightcall/common/DataChannelAction;

    goto :goto_2

    :cond_8
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOPPED_MUTE:Lcom/sightcall/common/DataChannelAction;

    :goto_2
    invoke-virtual {p0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_9
    :goto_3
    return-void
.end method

.method public onRtccStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$10;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishAndRemoveTaskOrFinishAffinity()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenshareProducerWebView:Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->saveState()V

    return-void
.end method

.method public onScreenshareEvent(Lnet/rtccloud/sdk/event/call/ScreenshareEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    return-void
.end method

.method public onShareDialogCancelled()V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->CANCELLED_MEDIA:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->addDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->weakReference:Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/steps/CallStep;->register(Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;)V

    :cond_1
    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->OVERLAY_PERMISSION_REQUIRED:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->finishOrRecreate()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onForeground()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/util/Utils;->videoConsumerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    :cond_3
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    invoke-static {p0, v0, v1}, Lcom/sightcall/universal/internal/util/Utils;->requestUsbCameraIfNeeded(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/CallParameters;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messaging:Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/messaging/Messaging;->get()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->refresh(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlay:Lcom/sightcall/universal/internal/messaging/TouchThroughRecyclerView;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->messagesOverlayAdapter:Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->lifecycle:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/util/SystemUiHelper;->removeQueuedRunnables()V

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->weakReference:Lcom/sightcall/universal/internal/ui/CallActivity$CallActivityWeakReference;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/steps/CallStep;->unregister(Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;)V

    :cond_2
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->removeDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->onBackground()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onStopProgressivex(Lnet/rtccloud/sdk/event/call/ProgressivexStopEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->progressivexImageView:Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->stop()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public onVideoEvent(Lnet/rtccloud/sdk/event/call/VideoEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/VideoEvent;->isSending()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v1, v0, Lcom/sightcall/universal/model/CallParameters;->videoStopPending:Z

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/VideoEvent;->isSending()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v1, p1, Lcom/sightcall/universal/model/CallParameters;->restartVideoAfterPicture:Z

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateAll()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->parameters:Lcom/sightcall/universal/model/CallParameters;

    invoke-static {p0, p1, v0}, Lcom/sightcall/universal/internal/util/Utils;->requestUsbCameraIfNeeded(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/CallParameters;)V

    return-void
.end method

.method public onVisibilityChange(Z)V
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->bars()[Lcom/sightcall/universal/agent/Usecase$Bar;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    iget-object v6, v5, Lcom/sightcall/universal/agent/Usecase$Bar;->role:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    sget-object v7, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->LOCAL:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Lcom/sightcall/universal/agent/Usecase$Bar;->alwaysvisible:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v8

    :cond_0
    iget-object v6, v5, Lcom/sightcall/universal/agent/Usecase$Bar;->role:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    sget-object v7, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->REMOTE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    if-ne v6, v7, :cond_1

    iget-object v5, v5, Lcom/sightcall/universal/agent/Usecase$Bar;->alwaysvisible:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v8

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->show()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->show()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->hasTouchScreen:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->hide()V

    :cond_5
    :goto_1
    move v2, v4

    :cond_6
    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->guest()Lcom/sightcall/universal/agent/Usecase$Guest;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sightcall/universal/agent/Usecase$Guest;->alwaysVisible:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->showAndHideSystemUi()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->show()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->showBar()V

    goto :goto_3

    :cond_8
    iget-boolean p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->hasTouchScreen:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->hide()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->hideBar()V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->show()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callViewModel:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;->showBar()V

    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->updateFloatingContainers()V

    return-void
.end method

.method public requestScreenCast(Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->screenCastPermissionListener:Lcom/sightcall/universal/internal/ui/CallActivity$ScreenCastCallback;

    const-class p1, Landroid/media/projection/MediaProjectionManager;

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk34()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->createConfigForDefaultDisplay()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent(Landroid/media/projection/MediaProjectionConfig;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->startMediaProjection:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public updateCallButtonBar()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBar:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->update(Lnet/rtccloud/sdk/Call;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->callButtonBarRemote:Lcom/sightcall/universal/internal/view/CallButtonBar;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->update(Lnet/rtccloud/sdk/Call;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->lockOrientationScreen()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->unlockOrientationScreen()V

    :cond_1
    return-void
.end method
