.class final synthetic Lcom/google/android/gms/internal/measurement/zzmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzmz;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzmz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmx;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmx;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/google/common/hash/Hashing;->a()Lcom/google/common/hash/HashFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/HashFunction;->a()Lcom/google/common/hash/Hasher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmx;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/hash/Hasher;->a([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->c()Lcom/google/common/hash/Hasher;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/hash/Hasher;->a([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->b()Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->a()[B

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmx;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmz;->a:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
