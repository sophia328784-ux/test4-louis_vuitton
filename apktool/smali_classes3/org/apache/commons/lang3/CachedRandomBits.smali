.class final Lorg/apache/commons/lang3/CachedRandomBits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Random;

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(ILjava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    const v0, 0xfffffff

    if-gt p1, v0, :cond_0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/lang3/CachedRandomBits;->b:[B

    const-string v0, "random"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->a:Ljava/util/Random;

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextBytes([B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/lang3/CachedRandomBits;->c:I

    return-void

    :cond_1
    const-string p0, "cacheSize must be positive"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
