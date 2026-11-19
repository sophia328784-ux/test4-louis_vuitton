.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 2

    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->c:[B

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->b([B)[B

    move-result-object v1

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->b:I

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->a()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p0

    return-object p0
.end method
