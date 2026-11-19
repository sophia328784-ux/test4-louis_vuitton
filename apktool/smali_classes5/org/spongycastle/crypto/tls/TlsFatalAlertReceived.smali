.class public Lorg/spongycastle/crypto/tls/TlsFatalAlertReceived;
.super Lorg/spongycastle/crypto/tls/TlsException;
.source "SourceFile"


# direct methods
.method public constructor <init>(S)V
    .locals 1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/AlertDescription;->a(S)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/tls/TlsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
