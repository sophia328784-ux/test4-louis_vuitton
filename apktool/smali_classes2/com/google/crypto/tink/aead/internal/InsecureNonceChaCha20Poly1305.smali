.class public final Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;
.super Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Base;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Base;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final d(I[B)Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Base;
    .locals 0

    new-instance p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;

    invoke-direct {p0, p2, p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;-><init>([BI)V

    return-object p0
.end method
