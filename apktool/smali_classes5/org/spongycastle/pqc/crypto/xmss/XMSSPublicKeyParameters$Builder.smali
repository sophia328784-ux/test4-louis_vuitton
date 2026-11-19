.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field public b:[B

.field public c:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->b:[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->c:[B

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->a:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-void
.end method
