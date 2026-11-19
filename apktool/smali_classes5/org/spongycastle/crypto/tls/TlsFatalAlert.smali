.class public Lorg/spongycastle/crypto/tls/TlsFatalAlert;
.super Lorg/spongycastle/crypto/tls/TlsException;
.source "SourceFile"


# direct methods
.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/AlertDescription;->a(S)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
