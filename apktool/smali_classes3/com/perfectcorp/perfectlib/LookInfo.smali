.class public final Lcom/perfectcorp/perfectlib/LookInfo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

.field public volatile c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "downloadedLookDatas can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->a:Ljava/util/Map;

    const-string v0, "makeupItemMetadata can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->d:Ljava/lang/String;

    invoke-static {p4, p1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->g:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LookInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->c:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->f:Ljava/lang/String;

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->q:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->b:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e:Ljava/lang/String;

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final isDownloaded()Z
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookInfo;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "LookInfo"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "Guid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Name"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookInfo;->isDownloaded()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isDownloaded"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
