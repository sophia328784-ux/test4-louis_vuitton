.class public Lcom/perfectcorp/common/network/DownloadKey$Guid;
.super Lcom/perfectcorp/common/network/DownloadTask$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/DownloadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Guid"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/common/network/DownloadTask$Key;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/network/DownloadKey$Guid;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    iget-object p1, p1, Lcom/perfectcorp/common/network/DownloadKey$Guid;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadKey$Guid;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadKey$Guid;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadKey$Guid;->a:Ljava/lang/String;

    return-object p0
.end method
