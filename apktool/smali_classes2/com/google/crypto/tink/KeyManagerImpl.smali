.class Lcom/google/crypto/tink/KeyManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/KeyManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/KeyManager<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/crypto/tink/internal/KeyTypeManager;

.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/KeyTypeManager;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/KeyTypeManager<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/crypto/tink/internal/KeyTypeManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Given internalKeyMananger "

    const-string v0, " does not support primitive class "

    invoke-static {p2, p0, v0, p1}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/crypto/tink/KeyManagerImpl;->a:Lcom/google/crypto/tink/internal/KeyTypeManager;

    iput-object p2, p0, Lcom/google/crypto/tink/KeyManagerImpl;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 2

    iget-object p0, p0, Lcom/google/crypto/tink/KeyManagerImpl;->a:Lcom/google/crypto/tink/internal/KeyTypeManager;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/KeyTypeManager;->d()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->c(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->d(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/KeyTypeManager;->d()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;

    move-result-object p0

    iget-object p0, p0, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failures parsing proto of type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 3

    iget-object p0, p0, Lcom/google/crypto/tink/KeyManagerImpl;->a:Lcom/google/crypto/tink/internal/KeyTypeManager;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/KeyTypeManager;->d()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->c(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->d(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->O()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/KeyTypeManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->u()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/crypto/tink/proto/KeyData;

    invoke-static {v2, v1}, Lcom/google/crypto/tink/proto/KeyData;->H(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/String;)V

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->e()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->u()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/crypto/tink/proto/KeyData;

    invoke-static {v1, p1}, Lcom/google/crypto/tink/proto/KeyData;->I(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/KeyTypeManager;->e()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->u()V

    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->c:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData;

    invoke-static {p1, p0}, Lcom/google/crypto/tink/proto/KeyData;->J(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->j()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyData;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Unexpected proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
