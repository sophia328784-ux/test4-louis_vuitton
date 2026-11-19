.class final Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/io/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# direct methods
.method public constructor <init>(Ljava/io/File;[Lcom/perfectcorp/thirdparty/com/google/common/io/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;->a:Ljava/io/File;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->u([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Files.asByteSink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
