.class final Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)V

    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->e:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->e:I

    iget v0, p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->f:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    iget p1, p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->g:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    invoke-super {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->a()[B

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->f:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->g:I

    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    return-object v0
.end method
