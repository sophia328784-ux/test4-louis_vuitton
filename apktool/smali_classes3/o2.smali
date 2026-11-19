.class public final synthetic Lo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lo2;->a:I

    iput-object p1, p0, Lo2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 46

    move-object/from16 v0, p0

    iget v1, v0, Lo2;->a:I

    const/4 v3, 0x3

    const-string v4, "[clearAll] failed"

    const-string v5, "TagHandler"

    const-string v6, "SkuHandler"

    iget-object v0, v0, Lo2;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[insertToDb] failed. guid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackgroundDownloader"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast v0, Lcom/perfectcorp/perfectlib/WatchVtoApplier$CreateCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/WatchVtoApplier$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast v0, Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v5, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast v0, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_0

    const-string v0, "[syncServer] canceled."

    invoke-static {v5, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v2, "[syncServer] failed."

    invoke-static {v5, v2, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_3
    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "[getListByEffect] failed."

    invoke-static {v6, v2, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;

    move-object/from16 v1, p1

    check-cast v1, Landroid/util/Pair;

    const-string v2, "[downloadProducts] onSuccess"

    invoke-static {v3, v6, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :pswitch_5
    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "product mapping update failed."

    invoke-static {v6, v2, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/internal/InternalErrorRetriever;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_6
    check-cast v0, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[syncServerByProtocol] Download failed url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    invoke-static {v1, v0, v3, v6}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_7
    check-cast v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-direct {v4, v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_8
    check-cast v0, Lcom/perfectcorp/perfectlib/RingVtoApplier$CreateCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/RingVtoApplier$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_9
    check-cast v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "RecommendationHandler"

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "productGuid"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    invoke-virtual {v5, v1, v4, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    invoke-virtual {v3, v1, v4, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void

    :pswitch_b
    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v3, "expiredDate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v5

    :goto_4
    const-string v4, "sdkSetting"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "period"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v8, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;

    invoke-virtual {v7, v6, v8}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;

    goto :goto_5

    :cond_5
    move-object v6, v5

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_6

    :cond_6
    const-wide/16 v7, -0x1

    :goto_6
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v9, "advSetting"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v10, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;

    invoke-virtual {v9, v3, v10}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;

    goto :goto_7

    :cond_7
    move-object v3, v5

    :goto_7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "serviceList"

    if-eqz v9, :cond_8

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object v5, v9

    :cond_8
    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "5bdcc368-b717-409c-8dd9-9fb82a334c67"

    invoke-interface {v9, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v7, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "2b1dd7b5-41ce-401a-a3d9-d594271817cf"

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v7, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "8831e33f-707f-414a-b7f8-e1024c0b332b"

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v5, :cond_9

    const-string v3, ""

    goto :goto_8

    :cond_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    const-string v5, "1ca08893-9d9a-49f8-b149-fb85b947ba00"

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "45619df4-1ce2-41cf-bc62-64d8c0fc00dc"

    const/16 v5, 0xc8

    invoke-interface {v9, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x0

    if-nez v6, :cond_a

    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    move v5, v3

    :goto_9
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_44

    const-string v4, "generalSetting"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3f

    const-string v9, "isEnableSharpenface"

    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v11, "isEnableEnlargeEye"

    invoke-virtual {v4, v11, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "isEnableTeethWhitening"

    invoke-virtual {v4, v12, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v13, "makeup"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "photo"

    const-string v15, "live"

    move/from16 v16, v5

    move/from16 v17, v16

    if-eqz v13, :cond_d

    :goto_a
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_d

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v16, 0x1

    goto :goto_b

    :cond_b
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v17, 0x1

    :cond_c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_d
    const-string v2, "hairColor"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_11

    move/from16 p1, v5

    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_10

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move/from16 v3, p1

    const/4 v5, 0x1

    goto :goto_d

    :cond_e
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_d

    :cond_f
    move/from16 v3, p1

    :goto_d
    add-int/lit8 v13, v13, 0x1

    move/from16 p1, v3

    goto :goto_c

    :cond_10
    move/from16 v2, p1

    goto :goto_e

    :cond_11
    move v2, v5

    :goto_e
    const-string v3, "funSticker"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move/from16 p1, v2

    move/from16 v18, v5

    if-eqz v3, :cond_13

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_14

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v13, 0x1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_13
    const/4 v13, 0x0

    :cond_14
    const-string v2, "reshape"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_10
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_17

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v19, 0x1

    :cond_15
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v20, 0x1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_17
    move/from16 v3, v19

    move/from16 v5, v20

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    :goto_11
    const-string v2, "eyewear"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move/from16 v21, v3

    move/from16 v22, v5

    if-eqz v2, :cond_1b

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1c

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v19, 0x1

    :cond_19
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v20, 0x1

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1b
    const/16 v19, 0x0

    const/16 v20, 0x0

    :cond_1c
    const-string v2, "eyewear3D"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_13
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1f

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v23, 0x1

    :cond_1d
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/16 v24, 0x1

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1f
    move/from16 v3, v23

    move/from16 v5, v24

    goto :goto_14

    :cond_20
    const/4 v5, 0x0

    :goto_14
    const-string v2, "earring"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move/from16 v25, v3

    move/from16 v26, v5

    if-eqz v2, :cond_23

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_15
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_24

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v23, 0x1

    :cond_21
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v24, 0x1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_23
    const/16 v23, 0x0

    const/16 v24, 0x0

    :cond_24
    const-string v2, "aiFaceCondition"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_26

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_25

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_26
    const-string v2, "nail"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_29

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/16 v27, 0x1

    goto :goto_18

    :cond_27
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v28, 0x1

    :cond_28
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_29
    move/from16 v3, v27

    move/from16 v5, v28

    goto :goto_19

    :cond_2a
    const/4 v5, 0x0

    :goto_19
    const-string v2, "watch"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move/from16 v29, v3

    move/from16 v30, v5

    if-eqz v2, :cond_2d

    const/4 v3, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_1a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2e

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v27, 0x1

    goto :goto_1b

    :cond_2b
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v28, 0x1

    :cond_2c
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2d
    const/16 v27, 0x0

    const/16 v28, 0x0

    :cond_2e
    const-string v2, "bracelet"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_1c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_31

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v31, 0x1

    goto :goto_1d

    :cond_2f
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v32, 0x1

    :cond_30
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_31
    move/from16 v3, v31

    move/from16 v5, v32

    goto :goto_1e

    :cond_32
    const/4 v5, 0x0

    :goto_1e
    const-string v2, "ring"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move/from16 v33, v3

    move/from16 v34, v5

    if-eqz v2, :cond_35

    const/4 v3, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_1f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_36

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    const/16 v31, 0x1

    goto :goto_20

    :cond_33
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/16 v32, 0x1

    :cond_34
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_35
    const/16 v31, 0x0

    const/16 v32, 0x0

    :cond_36
    const-string v2, "stacking"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_39

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/16 v35, 0x1

    goto :goto_22

    :cond_37
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    const/16 v36, 0x1

    :cond_38
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_39
    move/from16 v3, v35

    move/from16 v5, v36

    goto :goto_23

    :cond_3a
    const/4 v5, 0x0

    :goto_23
    const-string v2, "background"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move/from16 v36, v3

    if-eqz v2, :cond_3e

    const/4 v3, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    :goto_24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3d

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const/16 v37, 0x1

    goto :goto_25

    :cond_3b
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v35, 0x1

    :cond_3c
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3d
    move/from16 v2, p1

    move v14, v13

    move/from16 v3, v21

    move/from16 v4, v37

    :goto_26
    move v13, v12

    move v12, v11

    move v11, v9

    move v9, v5

    move/from16 v5, v22

    goto :goto_27

    :cond_3e
    move/from16 v2, p1

    move v14, v13

    move/from16 v3, v21

    const/4 v4, 0x0

    const/16 v35, 0x0

    goto :goto_26

    :cond_3f
    move v2, v5

    move/from16 v16, v2

    move/from16 v17, v16

    move/from16 v18, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_27
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_43

    const/4 v10, 0x0

    :goto_28
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v10, v15, :cond_43

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 p1, v1

    if-eqz v15, :cond_41

    const-string v1, "serviceName"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v2

    const-string v2, "skincare"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    :goto_29
    invoke-static {v15, v7, v8}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->q(Lorg/json/JSONObject;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_2a

    :cond_40
    const-string v2, "skincareHD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_29

    :cond_41
    move/from16 v21, v2

    :cond_42
    :goto_2a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v21

    goto :goto_28

    :cond_43
    move/from16 v21, v2

    move/from16 p0, v16

    move-object/from16 v16, v0

    move/from16 v0, p0

    move v1, v3

    move/from16 v44, v4

    move-object/from16 p0, v6

    move/from16 v43, v9

    move v3, v11

    move/from16 v6, v17

    move/from16 v15, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v11, v21

    move/from16 v9, v23

    move/from16 v21, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v18, v27

    move/from16 v17, v28

    move/from16 v20, v29

    move/from16 v19, v30

    move/from16 v40, v31

    move/from16 v41, v32

    move/from16 v38, v33

    move/from16 v39, v34

    move/from16 v45, v35

    move/from16 v42, v36

    goto :goto_2b

    :cond_44
    move-object/from16 v16, v0

    move v0, v5

    move v11, v0

    move v15, v11

    move-object/from16 p0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move v6, v15

    const/4 v5, 0x0

    :goto_2b
    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    move/from16 v22, v9

    const-string v9, "6f59ea6b-0af4-4c36-948c-965dc8a7c80e"

    invoke-interface {v10, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "8a277eed-7bf6-49bb-943a-77c55b7f92b2"

    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "c9d75858-7ec4-4e98-8fd6-088acae7658c"

    invoke-interface {v3, v9, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "8c533e4d-8dee-472b-88ae-23958087a236"

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "a04adc79-a0ab-4726-bee8-4dc857a8672e"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "5392ce5e-fb36-4c65-864a-45e27399802f"

    invoke-interface {v0, v3, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "089d2498-8bf1-411d-bc73-66cd9262897d"

    invoke-interface {v0, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "770cb509-08c2-4004-ad1c-fe00050c5155"

    invoke-interface {v0, v3, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "a5d92b49-599e-4647-94bb-0cb5c4b39b54"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "8db48cd5-5537-44a2-9280-347994063ac1"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db6c20d6-9772-440a-83b5-7c7cd45c22d6"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "0e409f66-17cd-4bcd-99f9-f0faaf885790"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "b354a7ba-9828-44bb-b6b8-e529b1b1a2da"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "f3162186-d3c4-465b-af95-4da31cb1851a"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "05982a41-e607-43af-a1da-9c9ac30681f8"

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "5d60e3a7-a146-4cef-bab8-6a00860c29de"

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "4dc308f1-eada-4e49-aa1e-0b3bfd3d509e"

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "25f91c6e-7522-4294-8a86-c2349ecfa982"

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "9fb8b2f9-c36b-4bdf-ae05-ba0ac6a4eeea"

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "05b09271-4b74-40f1-8281-752cee3036c2"

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "6e526351-5032-48d2-8f3e-961c82d8af39"

    move/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "8a4482f9-6238-4c9d-a238-14fca3e7abab"

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "adbd8b48-5bcb-465b-9079-c0ad816007b5"

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ca796e8e-5512-43a9-baa7-8cfafb16051c"

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "46b597e9-62f2-4b6b-9503-f8166528db97"

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "772a8c80-37ad-4fec-81d0-30da76c322e2"

    move/from16 v9, v43

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "5ba67514-b41e-44ad-9f1b-ef4d16a4bef2"

    move-object/from16 v2, v16

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fccc5881-4bd9-41cf-b821-42a70a38c352"

    invoke-virtual {v2, v1, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "f0a4e420-6682-45ec-abf2-79604f725e66"

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "163a3804-45c7-49fa-8fb4-e12c2fe1f99f"

    move/from16 v4, v44

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "93b923b7-81da-4336-a0fb-3d5a1b7a00ba"

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_c
    check-cast v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$CreateCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/NailVtoApplier$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_d
    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    return-void

    :pswitch_e
    check-cast v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;->onTrigger(Ljava/util/List;)V

    return-void

    :pswitch_f
    check-cast v0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    check-cast v0, Lcom/perfectcorp/perfectlib/CameraView;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :pswitch_11
    check-cast v0, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "LookHandler"

    const-string v3, "[checkNeedToUpdateWithGuids] failed"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_12
    check-cast v0, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$CreateCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_13
    check-cast v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "FaceAttributeAnalyzer"

    const-string v3, "[setImage] failed"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_14
    check-cast v0, Ljava/util/Set;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/FaceAnalysisData;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKFaceAttributeDetectCompleteEvent;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKFaceAttributeDetectCompleteEvent;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_15
    check-cast v0, Lcom/perfectcorp/perfectlib/BraceletVtoApplier$CreateCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/BraceletVtoApplier$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_16
    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/LookHandler;->d(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    return-void

    :pswitch_17
    check-cast v0, Lcom/perfectcorp/common/network/ProgressCallback;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;

    sget-object v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v2, Lr6;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_18
    check-cast v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$CreateCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
