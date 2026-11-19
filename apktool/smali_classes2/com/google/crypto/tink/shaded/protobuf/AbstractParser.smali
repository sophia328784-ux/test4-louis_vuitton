.class public abstract Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 3

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;

    iget-object v0, p2, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->e:[B

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->n()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p2

    const/4 v2, 0x1

    invoke-static {v2, v1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->f(ZII[B)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->a:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-static {p0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->D(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->a(I)V

    invoke-static {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->u(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
