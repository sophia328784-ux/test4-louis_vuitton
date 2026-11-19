.class final Lcom/perfectcorp/common/downloader/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic b:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/u;->b:Ljava/util/zip/ZipInputStream;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/u;->b:Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    return-void
.end method
