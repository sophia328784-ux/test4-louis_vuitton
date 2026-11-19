.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/hash/d;Ljava/util/zip/Checksum;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/hash/a;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;->a:Ljava/util/zip/Checksum;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;->a:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    long-to-int p0, v0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$b;->c:I

    return-object v0
.end method

.method public final e(B)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;->a:Ljava/util/zip/Checksum;

    invoke-interface {p0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method public final f([BII)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;->a:Ljava/util/zip/Checksum;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
