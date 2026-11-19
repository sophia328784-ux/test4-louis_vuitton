.class final Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v0

    const-string v1, "audio/raw"

    iget-object v2, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Landroidx/media3/common/Format;->I:I

    iget p2, p2, Landroidx/media3/common/Format;->G:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->u(I)I

    move-result v1

    mul-int/2addr v1, p2

    rem-int p2, v0, v1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->a:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->a:I

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;->b:I

    return p0
.end method
