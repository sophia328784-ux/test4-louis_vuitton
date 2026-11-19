.class public final Lcom/google/crypto/tink/mac/AesCmacKeyManager;
.super Lcom/google/crypto/tink/internal/KeyTypeManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyTypeManager<",
        "Lcom/google/crypto/tink/proto/AesCmacKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/crypto/tink/internal/PrimitiveConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lx1;-><init>(I)V

    const-class v1, Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->a(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/AesCmacKeyManager;->d:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    return-void
.end method

.method public static h(Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacParams;->J()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacParams;->J()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "tag size too long"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "tag size too short"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object p0
.end method

.method public final d()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
    .locals 1

    new-instance p0, Lcom/google/crypto/tink/mac/AesCmacKeyManager$2;

    const-class v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public final e()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 0

    sget-object p0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object p0
.end method

.method public final f(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->O(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCmacKey;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 1

    check-cast p1, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->M()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Validators;->c(I)V

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->K()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->L()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/mac/AesCmacKeyManager;->h(Lcom/google/crypto/tink/proto/AesCmacParams;)V

    return-void

    :cond_0
    const-string p0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-void
.end method
