.class final Landroidx/media3/extractor/ogg/OpusReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "SourceFile"


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/ogg/OpusReader;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/ogg/OpusReader;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public static e(Landroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 4

    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-byte v0, p1, v3

    :cond_0
    invoke-static {v1, v0}, Landroidx/media3/container/OpusUtil;->b(BB)J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    int-to-long p0, p0

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public final c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 1

    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->o:[B

    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->e(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x9

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0}, Landroidx/media3/container/OpusUtil;->a([B)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media3/common/Format$Builder;

    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v0, "audio/ogg"

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v0, "audio/opus"

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput p1, p2, Landroidx/media3/common/Format$Builder;->F:I

    const p1, 0xbb80

    iput p1, p2, Landroidx/media3/common/Format$Builder;->G:I

    iput-object p0, p2, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    return p3

    :cond_1
    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->p:[B

    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->e(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p0, Landroidx/media3/extractor/ogg/OpusReader;->n:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Landroidx/media3/extractor/ogg/OpusReader;->n:Z

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {p1, v0, v0}, Landroidx/media3/extractor/VorbisUtil;->b(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->a:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object p0

    if-nez p0, :cond_3

    :goto_0
    return p3

    :cond_3
    iget-object p1, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    iget-object p2, p2, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    invoke-virtual {p0, p2}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p0

    iput-object p0, p1, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    return p3

    :cond_4
    iget-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/OpusReader;->n:Z

    :cond_0
    return-void
.end method
