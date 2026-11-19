.class public abstract Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    invoke-direct {v0}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;-><init>()V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a:Ljava/net/URI;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->g:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    const-string v1, "priority can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/DownloadPriority;->a()I

    move-result p2

    iput p2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->d:I

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object p0

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    const-string p2, "_tmp"

    invoke-static {p0, p2}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->c:Ljava/io/File;

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b;->d:Ljava/lang/String;

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_src:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_imagesrc:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_shapesrc:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_secondsrc:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_thumbnail:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_obb_path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_obb_path:Ljava/lang/String;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v1, p1, v3, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_occluder_path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_occluder_path:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_occluder_path:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_shapesrc3d:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_feathersrc3d:Ljava/lang/String;

    invoke-static {v0, p0, p1, v2, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static d(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_thumbnail:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "_"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;

    move v5, v3

    :goto_0
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;->mask:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;->mask:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->c(Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask_cube_eyewear:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$j;

    move v5, v3

    :goto_1
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$j;->mask:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    iget-object v7, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$j;->mask:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v6, v7}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "front_src"

    invoke-virtual {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v9, "left_src"

    invoke-virtual {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v9, "right_src"

    invoke-virtual {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v9, "env_region_src"

    invoke-virtual {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v9, "env_map_src"

    invoke-virtual {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v9, "env_frame_src"

    invoke-virtual {v6, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7, v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->tattoo_mask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$l;

    move v5, v3

    :goto_2
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$l;->mask:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$l;->mask:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->c(Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->colored_mask:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$a;

    move v2, v3

    :goto_3
    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$a;->mask:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$a;->mask:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->d:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a$a;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->c(Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method public static e(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b;

    const-string v1, "_"

    invoke-static {p2, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
