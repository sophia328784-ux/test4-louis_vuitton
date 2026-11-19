.class public final Lcoil3/fetch/FileUriFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/FileUriFetcher$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/fetch/FileUriFetcher;",
        "Lcoil3/fetch/Fetcher;",
        "Lcoil3/Uri;",
        "uri",
        "Lcoil3/request/Options;",
        "options",
        "<init>",
        "(Lcoil3/Uri;Lcoil3/request/Options;)V",
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
.field public final a:Lcoil3/Uri;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/fetch/FileUriFetcher;->a:Lcoil3/Uri;

    iput-object p2, p0, Lcoil3/fetch/FileUriFetcher;->b:Lcoil3/request/Options;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Lokio/Path;->c:Lokio/Path$Companion;

    iget-object v0, p0, Lcoil3/fetch/FileUriFetcher;->a:Lcoil3/Uri;

    invoke-static {v0}, Lcoil3/UriKt;->b(Lcoil3/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    new-instance v0, Lcoil3/fetch/SourceFetchResult;

    iget-object p0, p0, Lcoil3/fetch/FileUriFetcher;->b:Lcoil3/request/Options;

    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    const/16 v2, 0x1c

    invoke-static {p1, p0, v1, v1, v2}, Lcoil3/decode/ImageSourceKt;->a(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/DiskCache$Snapshot;I)Lcoil3/decode/FileImageSource;

    move-result-object p0

    invoke-virtual {p1}, Lokio/Path;->b()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    const-string v2, ""

    invoke-static {v1, p1, v2}, Lkotlin/text/StringsKt;->R(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcoil3/util/MimeTypeMap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    invoke-direct {v0, p0, p1, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object v0

    :cond_0
    const-string p0, "filePath == null"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method
