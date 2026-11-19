.class public final Lcom/sightcall/mediacapture/domain/mappers/MappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a4\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a \u0010\u0000\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u001a\u000c\u0010\t\u001a\u00020\u0004*\u00020\u0002H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "toMedia",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "type",
        "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
        "source",
        "Lcom/sightcall/mediacapture/domain/entities/MediaSource;",
        "toMediaRepo",
        "lib_release"
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
.method public static final toMedia(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/domain/entities/MediaSource;Lcom/sightcall/mediacapture/domain/entities/MediaType;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/mediacapture/domain/entities/Media;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sightcall/mediacapture/repo/mappers/MediaCaptureMappersKt;->toExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getSize()Landroid/util/Size;

    move-result-object v4

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string p2, "video"

    const/4 v5, 0x0

    invoke-static {p0, p2, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p2, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Video:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    :cond_0
    :goto_0
    move-object v6, p1

    move-object v5, p2

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/sightcall/mediacapture/domain/entities/Media;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)V

    return-object v0
.end method

.method public static final toMedia(Lcom/sightcall/pratik/Result;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)Lcom/sightcall/pratik/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;",
            "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
            "Lcom/sightcall/mediacapture/domain/entities/MediaSource;",
            ")",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    instance-of v0, p0, Lcom/sightcall/pratik/Result$Error;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/sightcall/pratik/Result$Error;

    check-cast p0, Lcom/sightcall/pratik/Result$Error;

    invoke-virtual {p0}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 56
    :cond_0
    instance-of v0, p0, Lcom/sightcall/pratik/Result$Success;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sightcall/pratik/Result$Success;

    check-cast p0, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p0}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-static {p0, p2, p1}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMedia(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/domain/entities/MediaSource;Lcom/sightcall/mediacapture/domain/entities/MediaType;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 57
    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic toMedia$default(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/domain/entities/MediaSource;Lcom/sightcall/mediacapture/domain/entities/MediaType;ILjava/lang/Object;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/mediacapture/domain/mappers/MappersKt;->toMedia(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/domain/entities/MediaSource;Lcom/sightcall/mediacapture/domain/entities/MediaType;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method

.method public static final toMediaRepo(Lcom/sightcall/mediacapture/domain/entities/Media;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/domain/entities/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/domain/entities/Media;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    return-object v0
.end method
