.class public final Lcom/networkbench/agent/impl/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:B

.field private b:B


# direct methods
.method public constructor <init>(BB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/networkbench/agent/impl/j/a;->a:B

    iput-byte p2, p0, Lcom/networkbench/agent/impl/j/a;->b:B

    return-void
.end method

.method public static a(B)Lcom/networkbench/agent/impl/j/a;
    .locals 2

    and-int/lit16 v0, p0, 0xc0

    ushr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    and-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    new-instance v1, Lcom/networkbench/agent/impl/j/a;

    invoke-direct {v1, p0, v0}, Lcom/networkbench/agent/impl/j/a;-><init>(BB)V

    return-object v1
.end method


# virtual methods
.method public a()B
    .locals 1

    .line 14
    iget-byte v0, p0, Lcom/networkbench/agent/impl/j/a;->b:B

    shl-int/lit8 v0, v0, 0x6

    iget-byte p0, p0, Lcom/networkbench/agent/impl/j/a;->a:B

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public b()B
    .locals 0

    iget-byte p0, p0, Lcom/networkbench/agent/impl/j/a;->a:B

    return p0
.end method

.method public c()B
    .locals 0

    iget-byte p0, p0, Lcom/networkbench/agent/impl/j/a;->b:B

    return p0
.end method
