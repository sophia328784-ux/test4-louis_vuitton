.class public Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"


# instance fields
.field public final b:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->d([S)[S

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->b:[S

    return-void
.end method
