.class public final synthetic Landroidx/media3/session/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/z0;->b:I

    iput-object p1, p0, Landroidx/media3/session/z0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/media3/session/z0;->b:I

    iget-object p0, p0, Landroidx/media3/session/z0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/SizeAvoidingBitmapLoader;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/session/SizeAvoidingBitmapLoader;->b:Lcom/google/common/primitives/ImmutableIntArray;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/primitives/ImmutableIntArray;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/primitives/ImmutableIntArray;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 p0, 0x1

    invoke-static {p1, v1, v0, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/datasource/BitmapUtil;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1

    :pswitch_0
    move-object v4, p0

    check-cast v4, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    check-cast p1, Ljava/lang/Throwable;

    sget p0, Landroidx/media3/session/MediaLibrarySessionImpl;->L:I

    const-string p0, "Failed fetching recent media item at boot time."

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/media3/session/LibraryResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v5, Landroidx/media3/session/SessionError;

    const-string p0, "no error message provided"

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, -0x1

    invoke-direct {v5, v1, p0, p1}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    return-object v0

    :pswitch_1
    check-cast p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    check-cast p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-static {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->y(Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
