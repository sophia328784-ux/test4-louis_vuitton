.class public abstract Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/widget/ImageView;Ljava/lang/Object;III)V
    .locals 8

    and-int/lit8 v0, p4, 0x2

    const v1, 0x7f08035b

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    new-instance v2, Lr61;

    const/16 p4, 0xc

    invoke-direct {v2, p4}, Lr61;-><init>(I)V

    new-instance v5, Lo51;

    const/16 p4, 0x1b

    invoke-direct {v5, p4}, Lo51;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    move-result-object p4

    new-instance v7, Lcoil3/request/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    new-instance v0, Lcoil3/target/ImageViewTarget;

    invoke-direct {v0, p0}, Lcoil3/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, v7, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, p1}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V

    new-instance v0, Lhb;

    const/16 v1, 0x8

    invoke-direct {v0, p2, v1}, Lhb;-><init>(II)V

    iput-object v0, v7, Lcoil3/request/ImageRequest$Builder;->s:Lkotlin/jvm/functions/Function1;

    new-instance p2, Lhb;

    const/4 v0, 0x7

    invoke-direct {p2, p3, v0}, Lhb;-><init>(II)V

    iput-object p2, v7, Lcoil3/request/ImageRequest$Builder;->t:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;

    move-object v3, p1

    move-object v4, v2

    move-object v6, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt$loadImage$lambda$2$$inlined$listener$default$1;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/widget/ImageView;)V

    iput-object v0, v7, Lcoil3/request/ImageRequest$Builder;->e:Lcoil3/request/ImageRequest$Listener;

    invoke-virtual {v7}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object p0

    invoke-interface {p4, p0}, Lcoil3/ImageLoader;->d(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    return-void
.end method
