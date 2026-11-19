.class public final synthetic Lm20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;I)V
    .locals 0

    iput p2, p0, Lm20;->b:I

    iput-object p1, p0, Lm20;->c:Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm20;->b:I

    const-string v1, "camera"

    iget-object p0, p0, Lm20;->c:Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->f:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->open()V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->F:Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentImagePickerBinding;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerActivity;->p:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_5

    sget-object p1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->b:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->a()I

    move-result p1

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    iput-object v2, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    iput p1, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->b:I

    iput-object v0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->c:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->a()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    const-string p0, "pickImageLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->I:Lcom/otaliastudios/cameraview/CameraView;

    if-eqz p0, :cond_6

    new-instance p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g0(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
