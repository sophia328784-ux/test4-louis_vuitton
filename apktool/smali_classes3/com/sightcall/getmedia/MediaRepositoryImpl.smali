.class public final Lcom/sightcall/getmedia/MediaRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/getmedia/MediaRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u001e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J(\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0096@\u00a2\u0006\u0002\u0010\u0018J\"\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0006\u0010\u000f\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sightcall/getmedia/MediaRepositoryImpl;",
        "Lcom/sightcall/getmedia/MediaRepository;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/ContentResolver;)V",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "photo",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPhotoSize",
        "Landroid/util/Size;",
        "media",
        "getPhotoThumbnailBitmap",
        "uri",
        "size",
        "(Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getVideoSize",
        "getVideoThumbnailBitmap",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRawFile",
        "Lcom/sightcall/pratik/Result;",
        "",
        "Lcom/sightcall/getmedia/model/Failure;",
        "GetMedia_release"
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
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static final synthetic access$getContentResolver$p(Lcom/sightcall/getmedia/MediaRepositoryImpl;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public getBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;

    iget v1, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;-><init>(Lcom/sightcall/getmedia/MediaRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$2;-><init>(Lcom/sightcall/getmedia/MediaRepositoryImpl;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    iput-object v3, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getBitmap$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method public getPhotoSize(Landroid/net/Uri;)Landroid/util/Size;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/exifinterface/media/ExifInterface;

    invoke-static {p1}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    const-string v0, "ImageWidth"

    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v0

    const-string v1, "ImageLength"

    invoke-virtual {p0, p1, v1}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->n()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/sightcall/pratik/utils/BitmapUtilsKt;->getSizeFromOrientation(III)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPhotoThumbnailBitmap(Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/util/Size;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;

    iget v1, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;

    invoke-direct {v0, p0, p3}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;-><init>(Lcom/sightcall/getmedia/MediaRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    iget-object p0, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p3, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$2;

    invoke-direct {p3, p1, p2, v4}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$2;-><init>(Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getPhotoThumbnailBitmap$1;->label:I

    invoke-static {p0, p3, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p3
.end method

.method public getRawFile(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "[B",
            "Lcom/sightcall/getmedia/model/Failure;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sightcall/pratik/Result$Success;

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lcom/sightcall/getmedia/model/Failure$FileNotFound;->INSTANCE:Lcom/sightcall/getmedia/model/Failure$FileNotFound;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getVideoSize(Landroid/net/Uri;)Landroid/util/Size;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-static {p1}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p1
.end method

.method public getVideoThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Landroid/util/Size;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;

    iget v1, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;

    invoke-direct {v0, p0, p4}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;-><init>(Lcom/sightcall/getmedia/MediaRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    iget-object p0, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    iget-object p0, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/sightcall/getmedia/MediaRepositoryImpl;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$2;

    const/4 v10, 0x0

    move-object v8, p0

    move-object v9, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$2;-><init>(Landroid/net/Uri;Landroid/util/Size;Lcom/sightcall/getmedia/MediaRepositoryImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/sightcall/getmedia/MediaRepositoryImpl$getVideoThumbnailBitmap$1;->label:I

    invoke-static {p4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p4
.end method
