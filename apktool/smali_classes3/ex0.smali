.class public final synthetic Lex0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lex0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex0;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    iput-object p2, p0, Lex0;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p3, p0, Lex0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p4, p0, Lex0;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lex0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex0;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    iput-object p2, p0, Lex0;->d:Ljava/lang/String;

    iput-object p3, p0, Lex0;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p4, p0, Lex0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lex0;->b:I

    const/4 v2, 0x0

    iget-object v3, v0, Lex0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v4, v0, Lex0;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v5, v0, Lex0;->d:Ljava/lang/String;

    iget-object v0, v0, Lex0;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->c:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v1, v1, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "makeup_template.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v8, :cond_2

    const-string v6, "xml file does not exist."

    const/4 v9, 0x3

    const-string v10, "SkuDataForProtocol"

    invoke-static {v9, v10, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;

    invoke-direct {v10}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;-><init>()V

    invoke-virtual {v6, v8, v9, v10}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->g(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    invoke-virtual {v10}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->E()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->m()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "attr_guid"

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "attr_thumbnail"

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_thumbnail:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;->mask:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_obb_path:Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-class v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    invoke-virtual {v6, v9, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    invoke-static {v7, v11}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_thumbnail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;

    iget-object v6, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-direct {v2, v6, v7, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v2, v5, v4, v3}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;-><init>()V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;->a()Ljava/lang/Object;

    :cond_0
    sget-object v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v14, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_type:Ljava/lang/String;

    invoke-static {v14}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a(Ljava/lang/String;)I

    move-result v2

    int-to-float v15, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_thumbnail:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;FLcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    move-result-object v1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->h:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/template/c;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/ph/template/c;->c:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/template/c$a;

    invoke-direct {v11, v6}, Lcom/perfectcorp/perfectlib/ph/template/c$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/c;)V

    iput-object v7, v11, Lcom/perfectcorp/perfectlib/ph/template/c$a;->c:Ljava/util/List;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    iput-object v7, v11, Lcom/perfectcorp/perfectlib/ph/template/c$a;->d:Ljava/lang/String;

    iput-object v9, v11, Lcom/perfectcorp/perfectlib/ph/template/c$a;->g:Ljava/util/List;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/template/c;->h:Ljava/util/List;

    iput-object v6, v11, Lcom/perfectcorp/perfectlib/ph/template/c$a;->h:Ljava/util/List;

    iput-object v8, v11, Lcom/perfectcorp/perfectlib/ph/template/c$a;->e:Ljava/util/List;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ph/template/c$a;->a()Lcom/perfectcorp/perfectlib/ph/template/c;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-static {v1, v2, v6, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    move-result-object v2

    :goto_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v3, Laa0;

    const/16 v4, 0x18

    invoke-direct {v3, v0, v2, v4}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/template/b$b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const-string v9, "\'"

    if-nez v8, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_itemZIP:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    sget-object v8, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->n:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    invoke-direct {v2}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;-><init>()V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_itemZIP:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a:Ljava/net/URI;

    new-instance v1, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    invoke-direct {v1, v7}, Lcom/perfectcorp/common/network/DownloadKey$Guid;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->f:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->g:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    const-string v1, "priority can\'t be null"

    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/DownloadPriority;->a()I

    move-result v1

    iput v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->d:I

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_tmp_"

    invoke-static {v7, v9}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->c:Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v2, Let;

    const/4 v7, 0x5

    invoke-direct {v2, v1, v7}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    check-cast v1, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {v1, v6, v6}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v2, Lex0;

    invoke-direct {v2, v0, v5, v4, v3}, Lex0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {v6, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_2

    :cond_3
    const-string v0, "Unable to create directories of "

    invoke-static {v2, v0}, La61;->n(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v6

    :cond_4
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;

    const-string v1, "No content ZIP in pattern \'"

    invoke-static {v1, v7, v9}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;

    const-string v1, "Can\'t find pattern \'"

    invoke-static {v1, v7, v9}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
