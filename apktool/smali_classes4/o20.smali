.class public final synthetic Lo20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;I)V
    .locals 0

    iput p2, p0, Lo20;->b:I

    iput-object p1, p0, Lo20;->c:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lo20;->b:I

    iget-object p0, p0, Lo20;->c:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->I(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;)Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "IMAGE_POSITION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->H(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
