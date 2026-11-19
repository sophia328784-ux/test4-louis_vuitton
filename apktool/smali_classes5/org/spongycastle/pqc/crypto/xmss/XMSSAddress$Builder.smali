.class public abstract Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->c:J

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->d:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->a:I

    return-void
.end method
