.class public Lorg/bouncycastle/tsp/ers/ERSInputStreamData;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;


# instance fields
.field private final content:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    return-void

    :cond_0
    const-string p0, "directory not allowed"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    invoke-static {p1, p0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->concatPreviousHashes(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method
