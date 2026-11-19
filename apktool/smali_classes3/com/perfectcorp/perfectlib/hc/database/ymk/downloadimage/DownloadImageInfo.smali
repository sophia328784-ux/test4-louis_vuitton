.class public Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

.field public final e:J


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->e:J

    return-void
.end method
