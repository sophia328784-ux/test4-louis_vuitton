.class Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public b:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

.field public final c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->f:Z

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->d:I

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method
