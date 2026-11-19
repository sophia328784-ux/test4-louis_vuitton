.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.source "SourceFile"


# instance fields
.field public final c:[[S

.field public final d:[S

.field public final e:[[S

.field public final f:[S

.field public final g:[I

.field public final h:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 3

    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p5, v0

    const/4 v2, 0x0

    aget v2, p5, v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZI)V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->c:[[S

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->d:[S

    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->e:[[S

    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->f:[S

    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->g:[I

    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->h:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-void
.end method
