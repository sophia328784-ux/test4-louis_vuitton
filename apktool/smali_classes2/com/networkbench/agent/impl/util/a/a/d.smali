.class public Lcom/networkbench/agent/impl/util/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/util/a/a/a;


# static fields
.field private static final a:I = 0x41

.field private static final b:I = 0x9f

.field private static c:[I

.field private static d:[I


# instance fields
.field private final e:Ljava/security/SecureRandom;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/networkbench/agent/impl/util/a/a/d;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/networkbench/agent/impl/util/a/a/d;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x41

    .line 46
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/a/a/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9f

    const/16 v1, 0x41

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/a/a/d;->e:Ljava/security/SecureRandom;

    iput p1, p0, Lcom/networkbench/agent/impl/util/a/a/d;->f:I

    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "bitLen"

    filled-new-array {v1, p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s may not be out of the range [%d, %d]: %d"

    invoke-static {p1, p0}, Ld20;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 4

    iget v0, p0, Lcom/networkbench/agent/impl/util/a/a/d;->f:I

    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    rem-int/lit8 v0, v0, 0x8

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/a/a/d;->e:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    aget-byte v2, v1, p0

    sget-object v3, Lcom/networkbench/agent/impl/util/a/a/d;->c:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p0

    :cond_0
    aget-byte v2, v1, p0

    sget-object v3, Lcom/networkbench/agent/impl/util/a/a/d;->d:[I

    aget v0, v3, v0

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
