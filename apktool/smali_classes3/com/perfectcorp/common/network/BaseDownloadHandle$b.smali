.class Lcom/perfectcorp/common/network/BaseDownloadHandle$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/BaseDownloadHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public final b:D

.field public final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/DownloadTask$Key;DLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-wide p2, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->b:D

    iput-object p4, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->c:Ljava/io/File;

    return-void
.end method
