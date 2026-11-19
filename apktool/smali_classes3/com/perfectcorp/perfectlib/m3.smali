.class public final synthetic Lcom/perfectcorp/perfectlib/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/m3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget p0, p0, Lcom/perfectcorp/perfectlib/m3;->b:I

    const-string v0, "clearAllCompletable"

    const/4 v1, 0x3

    const-string v2, "PerfectLib"

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v0, "SkinCare3Preferences"

    invoke-static {v0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "RECOMMENDATION_EXTRA_INFO"

    invoke-virtual {v0, v1, v3}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FEATURE_CHECK_INVENTORY"

    const-string v4, "false"

    invoke-virtual {p0, v2, v4}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "true"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "inventory"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ProductId"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->upc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->upc:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    :goto_2
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/perfectcorp/perfectlib/a2;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/a2;-><init>(Ljava/util/HashMap;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/g;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/a0;

    const/4 v3, 0x7

    invoke-direct {v0, v1, p0, v3}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p0, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "SkinCare3RecommendationHandler"

    const-string v1, "[updateInventory] json parse failed"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_3
    return-object p0

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string p0, "clear nail look finish"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-nez p0, :cond_7

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_4

    :cond_7
    const-class p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    :goto_4
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string p0, "clear makeup look finish"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-nez p0, :cond_8

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_5

    :cond_8
    const-class p0, Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    :goto_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
