.class public final Landroidx/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/jpeg/JpegExtractor$Flags;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/Extractor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v2, v0, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    return-void

    :cond_0
    new-instance p1, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->a(JJ)V

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->release()V

    return-void
.end method
