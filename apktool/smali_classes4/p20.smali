.class public final synthetic Lp20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lp20;->b:I

    iput-object p1, p0, Lp20;->c:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    iput-object p2, p0, Lp20;->d:Ljava/lang/String;

    iput-object p3, p0, Lp20;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lp20;->b:I

    iget-object v1, p0, Lp20;->e:Ljava/lang/String;

    iget-object v2, p0, Lp20;->d:Ljava/lang/String;

    iget-object p0, p0, Lp20;->c:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipePrevious;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipePrevious;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;->Y5(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipeNext;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipeNext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;->Y5(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
