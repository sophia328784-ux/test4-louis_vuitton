.class public final Lcom/sightcall/universal/internal/view/SnapshotKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0003H\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0004H\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0005H\u0000\u001a*\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c\u001a \u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "getSnapshot",
        "Landroid/graphics/Bitmap;",
        "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;",
        "Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;",
        "Lcom/sightcall/universal/internal/view/MyVideoConsumerView;",
        "Lcom/sightcall/universal/internal/view/ProgressivexImageView;",
        "drawBitmap",
        "view",
        "Landroid/view/View;",
        "advancedAnnotationsContainer",
        "Landroid/view/ViewGroup;",
        "width",
        "",
        "height",
        "sdk_installedRelease"
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
.method public static final drawBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final drawBitmap(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-virtual {p0, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getSnapshot(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 23
    invoke-static {p0, v2, v0, v1}, Lcom/sightcall/universal/internal/view/SnapshotKt;->drawBitmap(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getSnapshot(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 20
    invoke-static {p0, v0, v1}, Lcom/sightcall/universal/internal/view/SnapshotKt;->drawBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getSnapshot(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/sightcall/universal/internal/view/SnapshotKt;->drawBitmap(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getSnapshot(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 27
    invoke-static {p0, v0, v1, v2}, Lcom/sightcall/universal/internal/view/SnapshotKt;->drawBitmap(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
