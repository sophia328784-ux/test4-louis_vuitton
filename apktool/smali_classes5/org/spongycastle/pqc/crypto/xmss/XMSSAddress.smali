.class public abstract Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    iget-wide v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->a:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->c:I

    iget p1, p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->b:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lorg/spongycastle/util/Pack;->g(J[BI)V

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->c:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->d:I

    const/16 v1, 0x1c

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    return-object v0
.end method
