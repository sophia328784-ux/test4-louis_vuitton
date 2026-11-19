.class public Lorg/bouncycastle/tsp/ers/ERSByteData;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSByteData;->content:[B

    return-void
.end method


# virtual methods
.method public calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSByteData;->content:[B

    invoke-static {p1, p0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->concatPreviousHashes(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method
