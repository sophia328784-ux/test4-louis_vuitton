.class final Lcom/perfectcorp/perfectlib/ph/template/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/perfectcorp/perfectlib/ph/template/g;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/i;->b:Lcom/perfectcorp/perfectlib/ph/template/g;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/template/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/i;->a:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v3

    move-object v4, v3

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->f:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->i:Ljava/lang/String;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    move-result-object v7

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->g:Ljava/lang/String;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;-><init>()V

    const-string v9, "intensity"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a:I

    const-string v9, "hidden_intensity"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->b:I

    const-string v9, "radius"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->c:I

    const-string v9, "browdefinition"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    const-string v10, "browcurvature"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, -0x3e8

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    const-string v12, "browthickness"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v12

    const-string v13, "browpositionx"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v13

    const-string v14, "browpositiony"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v14

    const-string v15, "browheadlocation"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v15

    move-object/from16 p0, v1

    const-string v1, "browtaillocation"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v1

    iput v9, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->d:I

    iput v10, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->e:I

    iput v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->f:I

    iput v13, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->g:I

    iput v14, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->h:I

    iput v15, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->i:I

    iput v1, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->j:I

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    move-result-object v1

    iget-object v6, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v6, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/template/s;

    invoke-direct {v8, v6, v2, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;Ljava/util/Collection;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;)V

    invoke-static {v6, v8}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v6, "TemplateUtils"

    const-string v8, "addFakePalette"

    invoke-static {v6, v8, v0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->j:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v5

    move-object v5, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;)V

    return-object v0
.end method
