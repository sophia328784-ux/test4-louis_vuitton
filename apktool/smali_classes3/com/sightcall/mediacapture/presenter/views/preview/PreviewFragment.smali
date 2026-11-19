.class public final Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u00017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010 \u001a\u00020\u001eH\u0016J\u0017\u0010!\u001a\u00020\u001e2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H\u0002J\u0008\u0010(\u001a\u00020\u001eH\u0002J\u0008\u00101\u001a\u00020\u001eH\u0002J\u0008\u00102\u001a\u00020\u001eH\u0002J\u0008\u00103\u001a\u00020\u001eH\u0002J\u0008\u00104\u001a\u00020\u001eH\u0002J\u0008\u00105\u001a\u000206H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008/\u00100\u00a8\u00068"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "getViewModel",
        "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "media",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "getMedia",
        "()Lcom/sightcall/mediacapture/domain/entities/Media;",
        "media$delegate",
        "binding",
        "Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;",
        "progressLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getProgressLayout",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "onDestroy",
        "displayDurationLimitAlert",
        "maxDuration",
        "",
        "(Ljava/lang/Integer;)V",
        "onPreviewState",
        "previewState",
        "Lcom/sightcall/mediacapture/presenter/PreviewState;",
        "prepareForImage",
        "scheduledExecutorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "wasPlaying",
        "",
        "value",
        "isPlaying",
        "setPlaying",
        "(Z)V",
        "prepareForVideo",
        "updateTimeUI",
        "play",
        "pause",
        "getVideoUri",
        "Landroid/net/Uri;",
        "Args",
        "lib_release"
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
.field private binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

.field private isPlaying:Z

.field private final media$delegate:Lkotlin/Lazy;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private wasPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljp0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljp0;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;I)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v2, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$3;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v4, p0, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$special$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->viewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Ljp0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljp0;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->media$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic J(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForVideo$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->viewModel_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForVideo$lambda$0$3(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForVideo$lambda$0$4(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic N(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->_set_isPlaying_$lambda$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V

    return-void
.end method

.method public static synthetic P(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->media_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForVideo$lambda$0$2(Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final _set_isPlaying_$lambda$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$isPlaying$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$isPlaying$1$1;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$onPreviewState(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Lcom/sightcall/mediacapture/presenter/PreviewState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->onPreviewState(Lcom/sightcall/mediacapture/presenter/PreviewState;)V

    return-void
.end method

.method public static final synthetic access$updateTimeUI(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->updateTimeUI()V

    return-void
.end method

.method private final displayDurationLimitAlert(Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/sightcall/mediacapture/R$string;->media_max_duration_exceeded_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    sget v1, Lcom/sightcall/mediacapture/R$string;->media_max_duration_exceeded_message:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;->toHumanReadableDuration(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    new-instance p0, Lip0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lip0;-><init>(I)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final displayDurationLimitAlert$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->media$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/domain/entities/Media;

    return-object p0
.end method

.method private final getProgressLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->progressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getVideoUri()Landroid/net/Uri;
    .locals 7

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p0
.end method

.method private final getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    return-object p0
.end method

.method private static synthetic instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->onViewCreated$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V

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

.method private static synthetic instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->onViewCreated$lambda$0$1(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V

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

.method private static synthetic instrumented$1$prepareForVideo$--V(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForVideo$lambda$0$1(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V

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

.method private static final media_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 1

    sget-object v0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;->Companion:Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args$Companion;->deserialize(Landroid/os/Bundle;)Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method

.method private final onPreviewState(Lcom/sightcall/mediacapture/presenter/PreviewState;)V
    .locals 3

    instance-of v0, p1, Lcom/sightcall/mediacapture/presenter/PreviewState$Idle;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getProgressLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->send:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->cancel:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    instance-of v0, p1, Lcom/sightcall/mediacapture/presenter/PreviewState$Loading;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getProgressLayout()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->send:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->cancel:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of p0, p1, Lcom/sightcall/mediacapture/presenter/PreviewState$Finished;

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/sightcall/pratik/misc/DoNothingKt;->doNothing()V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method private static final onViewCreated$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->validateMediaDuration(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->send(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getMaxDuration()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->displayDurationLimitAlert(Ljava/lang/Integer;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0$1(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->cancel()V

    return-void
.end method

.method public static synthetic p(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForImage$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final pause()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->setPlaying(Z)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final play()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iget-object v2, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->setPlaying(Z)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final prepareForImage()V
    .locals 9

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->preview:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->preview:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljp0;

    const/4 v1, 0x2

    invoke-direct {v5, p0, v1}, Ljp0;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;I)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/sightcall/pratik/extensions/ImageViewExtensionsKt;->load$default(Landroid/widget/ImageView;Landroid/net/Uri;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object p0, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final prepareForImage$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final prepareForVideo()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->preview:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timeSlider:Lcom/google/android/material/slider/Slider;

    new-instance v2, Ll90;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Ll90;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lkp0;

    invoke-direct {v2, p0, v3}, Lkp0;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    new-instance v2, Llp0;

    invoke-direct {v2, v0, p0}, Llp0;-><init>(Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lje0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lje0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lie0;

    invoke-direct {v2, p0, v3}, Lie0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getVideoUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForImage()V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final prepareForVideo$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-boolean p2, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->wasPlaying:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->play()V

    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p2}, Landroid/widget/VideoView;->getDuration()I

    move-result p3

    int-to-float p3, p3

    iget-object p1, p1, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timeSlider:Lcom/google/android/material/slider/Slider;

    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->seekTo(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->updateTimeUI()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final prepareForVideo$lambda$0$1(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->isPlaying:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->pause()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->play()V

    return-void
.end method

.method private static final prepareForVideo$lambda$0$2(Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p2, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timelineLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->seekTo(I)V

    invoke-direct {p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->updateTimeUI()V

    return-void
.end method

.method private static final prepareForVideo$lambda$0$3(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->setPlaying(Z)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->updateTimeUI()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final prepareForVideo$lambda$0$4(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->setPlaying(Z)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->updateTimeUI()V

    return-void
.end method

.method public static synthetic q(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->instrumented$1$prepareForVideo$--V(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->displayDurationLimitAlert$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final setPlaying(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->isPlaying:Z

    iput-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->wasPlaying:Z

    iput-boolean p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->isPlaying:Z

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    sget v0, Lcom/sightcall/mediacapture/R$drawable;->ic_pause:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p1, 0x1

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lhn0;

    const/16 p1, 0x8

    invoke-direct {v1, p0, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz v0, :cond_4

    iget-object p1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    sget v0, Lcom/sightcall/mediacapture/R$drawable;->ic_play_arrow:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_3
    iput-object v2, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateTimeUI()V
    .locals 3

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->currentTime:Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;->toTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->remainingTime:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;->toTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timeSlider:Lcom/google/android/material/slider/Slider;

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->currentTime:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->remainingTime:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timeSlider:Lcom/google/android/material/slider/Slider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->postponeEnterTransition()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getType()Lcom/sightcall/mediacapture/domain/entities/MediaType;

    move-result-object p1

    sget-object p2, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForImage()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->prepareForVideo()V

    :goto_0
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getPreviewState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$onViewCreated$1;

    invoke-direct {v2, p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$onViewCreated$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->send:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lkp0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lkp0;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->cancel:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lkp0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lkp0;-><init>(Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->validateMediaDuration(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getMaxDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->displayDurationLimitAlert(Ljava/lang/Integer;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
