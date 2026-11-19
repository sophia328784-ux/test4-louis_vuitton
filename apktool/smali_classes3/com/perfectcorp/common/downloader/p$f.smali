.class final Lcom/perfectcorp/common/downloader/p$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/downloader/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/net/URI;

.field public final b:Ljava/io/File;

.field public c:Ljava/lang/Object;

.field public d:Lcom/perfectcorp/common/downloader/o;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/downloader/p$f;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/downloader/p$f;->f:Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p$f;->c:Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/common/downloader/o;->a:Lcom/perfectcorp/common/downloader/o;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/p$f;->d:Lcom/perfectcorp/common/downloader/o;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/common/downloader/p$f;->e:I

    const-string v0, "downloadUri == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/p$f;->a:Ljava/net/URI;

    const-string p1, "downloadTarget == null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/common/downloader/p$f;->b:Ljava/io/File;

    return-void
.end method
