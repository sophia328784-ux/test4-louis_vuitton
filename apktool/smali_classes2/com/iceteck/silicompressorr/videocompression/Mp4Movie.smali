.class public Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/googlecode/mp4parser/util/Matrix;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->j:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a:Lcom/googlecode/mp4parser/util/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->j:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a:Lcom/googlecode/mp4parser/util/Matrix;

    return-void

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->k:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a:Lcom/googlecode/mp4parser/util/Matrix;

    return-void

    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->l:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a:Lcom/googlecode/mp4parser/util/Matrix;

    return-void

    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->m:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/Mp4Movie;->a:Lcom/googlecode/mp4parser/util/Matrix;

    :cond_3
    return-void
.end method
