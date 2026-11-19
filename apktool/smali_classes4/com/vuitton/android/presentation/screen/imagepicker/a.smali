.class public final synthetic Lcom/vuitton/android/presentation/screen/imagepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/a;->b:Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/imagepicker/a;->c:Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/imagepicker/a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;->G:[Lkotlin/reflect/KProperty;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/a;->b:Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;->d:Lcom/canhub/cropper/CropImageView;

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p1, v0}, Lcom/canhub/cropper/CropImageView;->d(Lcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->b()Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment$onViewCreated$1$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/imagepicker/a;->c:Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, p1, v4}, Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment$onViewCreated$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
