.class public final Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;
.super Lcom/vuitton/android/presentation/screen/imagepicker/Hilt_ImagePickerFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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


# instance fields
.field public F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

.field public G:Ljava/io/File;

.field public final H:Landroidx/lifecycle/ViewModelLazy;

.field public I:Lcom/otaliastudios/cameraview/CameraView;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/imagepicker/Hilt_ImagePickerFragment;-><init>()V

    const-class v0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerViewModel;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v4, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v4, v0, v1, v3, v2}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->H:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p3, 0x7f0d006e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a009b

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const p2, 0x7f0a009e

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    const p2, 0x7f0a009f

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const p2, 0x7f0a00c4

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/otaliastudios/cameraview/CameraView;

    if-eqz v5, :cond_0

    const p2, 0x7f0a00c8

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const p2, 0x7f0a00c9

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const p2, 0x7f0a00f3

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    const p2, 0x7f0a0209

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    const p2, 0x7f0a04ad

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p3

    move-object v10, p3

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/otaliastudios/cameraview/CameraView;Landroid/view/View;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    return-void

    :cond_0
    const-string p0, "camera"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/imagepicker/Hilt_ImagePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->j:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->c:Landroid/widget/RelativeLayout;

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/utils/FileUtils;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->G:Ljava/io/File;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->e:Lcom/otaliastudios/cameraview/CameraView;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->g:Landroid/widget/FrameLayout;

    new-instance v1, Lm20;

    invoke-direct {v1, p0, v2}, Lm20;-><init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;I)V

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->i:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lm20;

    invoke-direct {v1, p0, p2}, Lm20;-><init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;I)V

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->H:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerViewModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v1, Lm20;

    invoke-direct {v1, p0, v0}, Lm20;-><init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;I)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lm20;)V

    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$onViewCreated$4;-><init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;)V

    iget-object p1, p1, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->h:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lhi;

    invoke-direct {p2, p0, v0}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "camera"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
