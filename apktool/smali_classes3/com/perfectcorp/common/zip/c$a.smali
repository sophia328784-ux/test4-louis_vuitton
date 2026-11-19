.class final Lcom/perfectcorp/common/zip/c$a;
.super Lcom/perfectcorp/common/zip/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/zip/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/common/zip/c;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/common/zip/c$a;->e:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    iget-object p0, p0, Lcom/perfectcorp/common/zip/c$a;->e:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    return-void
.end method
