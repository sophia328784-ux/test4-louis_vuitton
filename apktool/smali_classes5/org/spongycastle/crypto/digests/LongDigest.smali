.class public abstract Lorg/spongycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# static fields
.field public static final o:[J


# instance fields
.field public final a:[B

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public final m:[J

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/LongDigest;->o:[J

    return-void

    :array_0
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 78
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    const/16 v0, 0x50

    .line 79
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    .line 81
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->i()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/LongDigest;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    const/16 v1, 0x50

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->e:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->e:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->f:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->f:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->g:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->g:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->h:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->h:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->i:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->i:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->j:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->j:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->k:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->k:J

    iget-wide v2, p1, Lorg/spongycastle/crypto/digests/LongDigest;->l:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->l:J

    iget-object v0, p1, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    iput p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    return-void
.end method

.method public static c(JJJ)J
    .locals 0

    and-long/2addr p2, p0

    not-long p0, p0

    and-long/2addr p0, p4

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static d(JJJ)J
    .locals 2

    and-long v0, p0, p2

    and-long/2addr p0, p4

    xor-long/2addr p0, v0

    and-long/2addr p2, p4

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static e(J)J
    .locals 6

    const/16 v0, 0x24

    shl-long v0, p0, v0

    const/16 v2, 0x1c

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p0, v2

    const/16 v4, 0x22

    ushr-long v4, p0, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p0, v2

    const/16 v4, 0x27

    ushr-long/2addr p0, v4

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static f(J)J
    .locals 6

    const/16 v0, 0x32

    shl-long v0, p0, v0

    const/16 v2, 0xe

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p0, v2

    const/16 v4, 0x12

    ushr-long v4, p0, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p0, v2

    const/16 v4, 0x29

    ushr-long/2addr p0, v4

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(I[B)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    aget-byte v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/digests/LongDigest;->k(B)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    array-length v2, v1

    if-le p1, v2, :cond_2

    iget v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    invoke-static {p2, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v3

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    aput-wide v3, v5, v2

    iget v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->h()V

    :cond_1
    array-length v2, v1

    add-int/2addr v0, v2

    array-length v2, v1

    sub-int/2addr p1, v2

    iget-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    goto :goto_1

    :cond_2
    :goto_2
    if-lez p1, :cond_3

    aget-byte v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/digests/LongDigest;->k(B)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 8

    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    const/16 v6, 0x3d

    ushr-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/LongDigest;->k(B)V

    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/LongDigest;->k(B)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    const/16 v5, 0xe

    if-le v4, v5, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->h()V

    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    aput-wide v2, v4, v5

    const/16 v2, 0xf

    aput-wide v0, v4, v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->h()V

    return-void
.end method

.method public final h()V
    .locals 49

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    const-wide v3, 0x1fffffffffffffffL

    cmp-long v5, v1, v3

    const/16 v6, 0x3d

    if-lez v5, :cond_0

    iget-wide v7, v0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    ushr-long v9, v1, v6

    add-long/2addr v7, v9

    iput-wide v7, v0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    :cond_0
    const/16 v2, 0x10

    :goto_0
    const/16 v3, 0x4f

    const/16 v4, 0x8

    iget-object v5, v0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    aget-wide v7, v5, v3

    const/16 v3, 0x2d

    shl-long v9, v7, v3

    const/16 v3, 0x13

    ushr-long v11, v7, v3

    or-long/2addr v9, v11

    const/4 v3, 0x3

    shl-long v11, v7, v3

    ushr-long v13, v7, v6

    or-long/2addr v11, v13

    xor-long/2addr v9, v11

    const/4 v3, 0x6

    ushr-long/2addr v7, v3

    xor-long/2addr v7, v9

    add-int/lit8 v3, v2, -0x7

    aget-wide v9, v5, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v2, -0xf

    aget-wide v9, v5, v3

    const/16 v3, 0x3f

    shl-long v11, v9, v3

    const/4 v3, 0x1

    ushr-long v13, v9, v3

    or-long/2addr v11, v13

    const/16 v3, 0x38

    shl-long v13, v9, v3

    ushr-long v3, v9, v4

    or-long/2addr v3, v13

    xor-long/2addr v3, v11

    const/4 v11, 0x7

    ushr-long/2addr v9, v11

    xor-long/2addr v3, v9

    add-long/2addr v7, v3

    add-int/lit8 v3, v2, -0x10

    aget-wide v3, v5, v3

    add-long/2addr v7, v3

    aput-wide v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lorg/spongycastle/crypto/digests/LongDigest;->e:J

    iget-wide v6, v0, Lorg/spongycastle/crypto/digests/LongDigest;->f:J

    iget-wide v8, v0, Lorg/spongycastle/crypto/digests/LongDigest;->g:J

    iget-wide v10, v0, Lorg/spongycastle/crypto/digests/LongDigest;->h:J

    iget-wide v12, v0, Lorg/spongycastle/crypto/digests/LongDigest;->i:J

    iget-wide v14, v0, Lorg/spongycastle/crypto/digests/LongDigest;->j:J

    move/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v0, Lorg/spongycastle/crypto/digests/LongDigest;->k:J

    move-wide/from16 v18, v2

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->l:J

    move-wide/from16 v20, v10

    move-wide v10, v4

    move-wide/from16 v4, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v12

    move-wide v12, v6

    move-wide/from16 v6, v20

    move-wide/from16 v20, v14

    move-wide v14, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v1

    const/4 v3, 0x0

    const/16 v26, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v3, v1, :cond_2

    invoke-static {v6, v7}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    invoke-static/range {v6 .. v11}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v22

    move-wide/from16 v24, v6

    move-wide/from16 v27, v10

    move-wide v10, v8

    add-long v1, v1, v22

    sget-object v29, Lorg/spongycastle/crypto/digests/LongDigest;->o:[J

    aget-wide v6, v29, v26

    add-long/2addr v1, v6

    add-int/lit8 v30, v26, 0x1

    aget-wide v6, v17, v26

    add-long/2addr v1, v6

    add-long v1, v1, v20

    add-long v20, v18, v1

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v18

    move-wide v6, v12

    move-wide v8, v14

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v12

    add-long v18, v18, v12

    add-long v35, v18, v1

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v22, v24

    move-wide/from16 v24, v10

    invoke-static/range {v20 .. v25}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v10

    move-wide/from16 v14, v24

    move-wide/from16 v24, v22

    add-long/2addr v1, v10

    aget-wide v10, v29, v30

    add-long/2addr v1, v10

    add-int/lit8 v10, v26, 0x2

    aget-wide v11, v17, v30

    add-long/2addr v1, v11

    add-long v1, v1, v27

    add-long v33, v8, v1

    invoke-static/range {v35 .. v36}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v11

    move-wide v8, v6

    move-wide v6, v4

    move-wide/from16 v4, v35

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v18

    move-wide v4, v6

    move-wide v6, v8

    add-long v11, v11, v18

    add-long v41, v11, v1

    invoke-static/range {v33 .. v34}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v22, v20

    move-wide/from16 v20, v33

    invoke-static/range {v20 .. v25}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v8

    move-wide/from16 v20, v22

    add-long/2addr v1, v8

    aget-wide v8, v29, v10

    add-long/2addr v1, v8

    add-int/lit8 v11, v26, 0x3

    aget-wide v8, v17, v10

    add-long/2addr v1, v8

    add-long/2addr v1, v14

    add-long v31, v6, v1

    invoke-static/range {v41 .. v42}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v12

    move-wide v8, v4

    move-wide/from16 v6, v35

    move-wide/from16 v4, v41

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v14

    move-wide v4, v8

    add-long/2addr v12, v14

    add-long v39, v12, v1

    invoke-static/range {v31 .. v32}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v35, v20

    invoke-static/range {v31 .. v36}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v8

    move-wide/from16 v47, v31

    move-wide/from16 v14, v33

    add-long/2addr v1, v8

    aget-wide v8, v29, v11

    add-long/2addr v1, v8

    add-int/lit8 v8, v26, 0x4

    aget-wide v9, v17, v11

    add-long/2addr v1, v9

    add-long v1, v1, v24

    add-long v45, v4, v1

    invoke-static/range {v39 .. v40}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v4

    move-wide/from16 v35, v6

    move-wide/from16 v31, v39

    move-wide/from16 v33, v41

    invoke-static/range {v31 .. v36}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v4, v1

    invoke-static/range {v45 .. v46}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v41, v14

    move-wide/from16 v37, v45

    move-wide/from16 v39, v47

    invoke-static/range {v37 .. v42}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v6

    add-long/2addr v1, v6

    aget-wide v6, v29, v8

    add-long/2addr v1, v6

    add-int/lit8 v6, v26, 0x5

    aget-wide v7, v17, v8

    add-long/2addr v1, v7

    add-long v1, v1, v20

    add-long v11, v35, v1

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v7

    move-wide/from16 v37, v4

    move-wide/from16 v39, v31

    move-wide/from16 v41, v33

    invoke-static/range {v37 .. v42}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v4

    add-long/2addr v7, v4

    add-long v35, v7, v1

    invoke-static {v11, v12}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v43, v11

    invoke-static/range {v43 .. v48}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v4

    add-long/2addr v1, v4

    aget-wide v4, v29, v6

    add-long/2addr v1, v4

    add-int/lit8 v4, v26, 0x6

    aget-wide v5, v17, v6

    add-long/2addr v1, v5

    add-long/2addr v1, v14

    add-long v9, v33, v1

    invoke-static/range {v35 .. v36}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v5

    invoke-static/range {v35 .. v40}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v7

    move-wide/from16 v22, v35

    add-long/2addr v5, v7

    add-long v20, v5, v1

    invoke-static {v9, v10}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v30, v9

    move-wide/from16 v32, v11

    move-wide/from16 v34, v45

    invoke-static/range {v30 .. v35}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v5

    add-long/2addr v1, v5

    aget-wide v5, v29, v4

    add-long/2addr v1, v5

    add-int/lit8 v5, v26, 0x7

    aget-wide v6, v17, v4

    add-long/2addr v1, v6

    add-long v1, v1, v47

    add-long v7, v39, v1

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v9

    move-wide/from16 v39, v22

    move-wide/from16 v41, v37

    move-wide/from16 v37, v20

    invoke-static/range {v37 .. v42}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v13

    move-wide/from16 v37, v41

    add-long/2addr v9, v13

    add-long v18, v9, v1

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/digests/LongDigest;->f(J)J

    move-result-wide v1

    move-wide/from16 v9, v30

    invoke-static/range {v7 .. v12}, Lorg/spongycastle/crypto/digests/LongDigest;->c(JJJ)J

    move-result-wide v13

    add-long/2addr v1, v13

    aget-wide v9, v29, v5

    add-long/2addr v1, v9

    add-int/lit8 v26, v26, 0x8

    aget-wide v4, v17, v5

    add-long/2addr v1, v4

    add-long v1, v1, v45

    add-long v4, v37, v1

    invoke-static/range {v18 .. v19}, Lorg/spongycastle/crypto/digests/LongDigest;->e(J)J

    move-result-wide v9

    invoke-static/range {v18 .. v23}, Lorg/spongycastle/crypto/digests/LongDigest;->d(JJJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v1, v9

    add-int/lit8 v3, v3, 0x1

    move-wide v8, v7

    move-wide/from16 v14, v20

    move-wide v6, v4

    move-wide/from16 v20, v11

    move-wide/from16 v12, v18

    move-wide/from16 v18, v22

    move-wide/from16 v10, v30

    move-wide v4, v1

    goto/16 :goto_1

    :cond_2
    move-wide/from16 v24, v14

    move-wide v14, v8

    move-wide/from16 v8, v24

    move-wide/from16 v24, v6

    move-wide/from16 v27, v10

    move-wide v6, v12

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->e:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->e:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->f:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->f:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->g:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->g:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->h:J

    add-long v1, v1, v18

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->h:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->i:J

    add-long v1, v1, v24

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->i:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->j:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->j:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->k:J

    add-long v1, v1, v27

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->k:J

    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->l:J

    add-long v1, v1, v20

    iput-wide v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->l:J

    const/4 v1, 0x0

    iput v1, v0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    move v3, v1

    const/16 v0, 0x10

    :goto_2
    if-ge v3, v0, :cond_3

    const-wide/16 v1, 0x0

    aput-wide v1, v17, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public i()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    array-length v4, v3

    if-eq v2, v4, :cond_1

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final j([B)V
    .locals 4

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->d:J

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->e:J

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->f:J

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->g:J

    const/16 v0, 0x34

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->h:J

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->i:J

    const/16 v0, 0x44

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->j:J

    const/16 v0, 0x4c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->k:J

    const/16 v0, 0x54

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->l:J

    const/16 v0, 0x5c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    if-ge v2, v0, :cond_0

    mul-int/lit8 v0, v2, 0x8

    add-int/lit8 v0, v0, 0x60

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(B)V
    .locals 4

    iget v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/LongDigest;->a:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_1

    iget p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v1

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/LongDigest;->m:[J

    aput-wide v1, v3, p1

    iget p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/spongycastle/crypto/digests/LongDigest;->n:I

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->h()V

    :cond_0
    iput v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->b:I

    :cond_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/LongDigest;->c:J

    return-void
.end method
