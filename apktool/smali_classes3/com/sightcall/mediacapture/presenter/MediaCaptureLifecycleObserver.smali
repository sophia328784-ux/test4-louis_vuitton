.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "registry",
        "Landroidx/activity/result/ActivityResultRegistry;",
        "selectedUri",
        "Lkotlin/Function1;",
        "Landroid/net/Uri;",
        "",
        "<init>",
        "(Landroidx/activity/result/ActivityResultRegistry;Lkotlin/jvm/functions/Function1;)V",
        "pickMedia",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroidx/activity/result/PickVisualMediaRequest;",
        "onCreate",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "selectPhoto",
        "selectVideo",
        "selectVideoAndPhoto",
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
.field private pickMedia:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Landroidx/activity/result/ActivityResultRegistry;

.field private final selectedUri:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->registry:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->selectedUri:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->onCreate$lambda$0(Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;Landroid/net/Uri;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->selectedUri:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->registry:Landroidx/activity/result/ActivityResultRegistry;

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    new-instance v2, Lfw;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3}, Lfw;-><init>(Ljava/lang/Object;I)V

    const-string v3, "key"

    invoke-virtual {v0, v3, p1, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$2;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final selectPhoto()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    invoke-static {v0}, Landroidx/activity/result/PickVisualMediaRequestKt;->a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "pickMedia"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final selectVideo()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;

    invoke-static {v0}, Landroidx/activity/result/PickVisualMediaRequestKt;->a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "pickMedia"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final selectVideoAndPhoto()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    invoke-static {v0}, Landroidx/activity/result/PickVisualMediaRequestKt;->a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "pickMedia"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
