.class public final Lcoil3/fetch/BitmapFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/BitmapFetcher$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcoil3/fetch/BitmapFetcher;",
        "Lcoil3/fetch/Fetcher;",
        "Landroid/graphics/Bitmap;",
        "Lcoil3/Bitmap;",
        "data",
        "<init>",
        "(Landroid/graphics/Bitmap;)V",
        "Factory",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/fetch/BitmapFetcher;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Lcoil3/fetch/ImageFetchResult;

    iget-object p0, p0, Lcoil3/fetch/BitmapFetcher;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcoil3/Image_androidKt;->c(Landroid/graphics/Bitmap;)Lcoil3/BitmapImage;

    move-result-object p0

    sget-object v0, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    return-object p1
.end method
