.class public final Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/request/ImageRequest$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1",
        "Lcoil3/request/ImageRequest$Listener;",
        "io.coil-kt.coil3:coil-core"
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
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/request/SuccessResult;)V
    .locals 1

    iget-object p1, p1, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    iget-object v0, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcoil3/request/ErrorResult;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->c:Ljava/lang/Object;

    const-string v1, "Unable to load image from data="

    invoke-static {v0, v1}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcoil3/request/ErrorResult;->c:Ljava/lang/Throwable;

    sget-object v1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v2, "ImageLoading"

    invoke-virtual {v1, v2, v0, p1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onCancel()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image loading canceled for data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v3, "ImageLoading"

    invoke-virtual {v2, v3, v0, v1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
