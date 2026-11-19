.class public final synthetic Lna0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lna0;->a:I

    iput-object p1, p0, Lna0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lna0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lna0;->a:I

    const-string v1, "LookHandler"

    const-string v2, "SkinCare3RecommendationHandler"

    const/4 v3, 0x0

    const-string v4, "BackgroundDownloader"

    const/4 v5, 0x3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unzip or parse failed, guid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " zip file="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " zip file size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[createUnzipSingle] failed. guid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    check-cast p1, Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[initParallelly] onSuccess. domain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", successFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKInitHandler"

    invoke-static {v5, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[initParallelly] emit success"

    invoke-static {v5, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getListByEffect] succeed, effect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SkuHandler"

    invoke-static {p1, v1, v5, v0}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    goto :goto_0

    :cond_1
    return-void

    :pswitch_5
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast p1, Ljava/io/File;

    const-string v1, "[getThumbnailDownloadTasks] download successfully. url="

    invoke-static {v5, v1, v0, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    goto :goto_1

    :cond_2
    const-string p0, "[getThumbnailDownloadTasks] builder updated. url="

    invoke-static {v5, p0, v0, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "SURVEY_CONTENT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance p1, Lcom/perfectcorp/perfectlib/y3;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    const-string p0, "[downloadSurveyContent] end"

    invoke-static {v5, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;->guid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;->info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;->guid:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v4, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;->a:Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;->info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {v5, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v4, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;->b:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;

    invoke-direct {v3, v4}, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Laa0;

    const/16 v4, 0x16

    invoke-direct {v3, v2, v1, v4}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/f;

    const/16 v2, 0xa

    invoke-direct {v1, v0, p1, p0, v2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/Configuration;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    check-cast p1, Ljava/util/Set;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;->INITIALIZED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string v2, ""

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a:Ljava/lang/String;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/Configuration;->f:Ljava/lang/String;

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v1

    const-string v2, "ACTIVATION_EVENT_SENT_VERSION"

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/common/utility/j;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x2e7c

    if-eq v3, v4, :cond_5

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/f$a;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/ymk/clflurry/f$a;-><init>()V

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/clflurry/f;

    const-string v7, "MCSDK_Activation"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->a()Ljava/util/HashMap;

    move-result-object v7

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/f$a;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    invoke-virtual {v1, v4, v2}, Lcom/perfectcorp/common/utility/j;->n(ILjava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/f;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/f;-><init>()V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    iget-boolean v1, v0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    sput-boolean v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->O:Z

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    sput-boolean v0, Lcom/perfectcorp/perfectlib/developermode/WatermarkBlender;->a:Z

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sput-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v1, "f0a4e420-6682-45ec-abf2-79604f725e66"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK initialized. availableFunctionalities="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", enabledAiFaceConditions="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->e:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PerfectLib"

    invoke-static {v5, v0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;

    check-cast p1, Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[checkNeedToUpdateWithGuids] success, needToUpdateMap.size"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lna0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object p0, p0, Lna0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[download] canceled. guid="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[download] failed. guid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
