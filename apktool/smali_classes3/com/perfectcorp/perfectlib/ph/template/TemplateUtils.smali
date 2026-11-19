.class public abstract Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;,
        Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;,
        Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;,
        Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;
    }
.end annotation


# static fields
.field public static final a:F

.field public static final b:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final c:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final d:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final e:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final f:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final g:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final h:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final i:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final j:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final k:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final l:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final m:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final n:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final o:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final p:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final q:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final r:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final s:Lcom/perfectcorp/common/debug/PerformanceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "94.0"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    sput v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a:F

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->c:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->d:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->e:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->f:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->h:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->j:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->l:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->n:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->o:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->q:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->r:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->s:Lcom/perfectcorp/common/debug/PerformanceCounter;

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 28

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    const-string v3, ""

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->d:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v8

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->f:Ljava/lang/String;

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "level_max"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    const-string v4, "level_default"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    const-string v4, "is_shimmer"

    invoke-virtual {v9, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "shimmer_intensity"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v13

    const-string v4, "engine_color"

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v14, v4, [I

    move v15, v6

    :goto_2
    if-ge v15, v4, :cond_4

    array-length v4, v3

    if-ge v15, v4, :cond_3

    aget-object v4, v3, v15

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    aget-object v4, v3, v15

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v14, v15

    goto :goto_4

    :cond_2
    :goto_3
    aput v5, v14, v15

    goto :goto_4

    :cond_3
    aput v5, v14, v15

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0x8

    goto :goto_2

    :cond_4
    const-string v3, "shine_intensity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v15

    const-string v3, "hair_dye_mode"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "glow_intensity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x3e8

    invoke-static {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v17

    const-string v3, "coverage_intensity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v18

    const-string v3, "skin_smooth_intensity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v19

    const-string v3, "shimmer_density"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v20

    const-string v3, "shimmer_granularity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v21

    const-string v3, "metallic_intensity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v22

    const-string v3, "shimmer_color"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v23

    const-string v3, "color_intensity"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v24

    const-string v3, "gloss"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v25

    const-string v3, "transparency"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v26

    const-string v3, "inner_text"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v6

    :try_start_1
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    invoke-direct/range {v6 .. v27}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(IILjava/lang/String;IIZI[IILjava/lang/String;IIIIIIIIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move v3, v6

    :goto_5
    const-string v4, "TemplateUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    :goto_6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public static B(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;
    .locals 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0

    :cond_1
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-result-object v8

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->c:Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->d:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->b:F

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->m:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->e:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;F)F
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[floatStringToFloat] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be parsed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TemplateUtils"

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public static addDefaultTemplates(Landroid/database/sqlite/SQLiteDatabase;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DEFAULT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    const-string v2, "assets://makeup/"

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->a:Ljava/lang/String;

    const-string v2, "makeup_template.xml"

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->b:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>()V

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/r;

    invoke-direct {v3, p0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v1}, Lcom/perfectcorp/perfectlib/ph/template/r;->f(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->b:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    new-instance v0, Lw21;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v2, v1}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "addMakeupTemplate, folderPath=assets://makeup/, sourceType="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->b:Ljava/lang/Throwable;

    const-string v1, "TemplateUtils"

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->b:Ljava/lang/Throwable;

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    throw p0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;F)F
    .locals 2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[floatStringToFloat] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not string. fieldName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemplateUtils"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/ph/template/c;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;
    .locals 75

    move-object/from16 v0, p0

    const-string v1, "right_obc_path"

    const-string v2, "right_glpf_path"

    const-string v3, "left_obc_path"

    const-string v4, "left_glpf_path"

    const-string v5, "1"

    const-string v6, "feathersrc3d"

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    if-nez v9, :cond_0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v9, v7

    goto :goto_0

    :cond_0
    move-object v9, v11

    :goto_0
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    sget-object v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    new-instance v14, Landroid/graphics/Point;

    sget-object v13, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b:Landroid/graphics/Point;

    invoke-direct {v14, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v17, v8

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    sget-object v18, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->BOTH:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    move-object/from16 v19, v9

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v20, v11

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v21, v12

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v22, v1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v23, v2

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v24, v3

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v25, v4

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v26, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v27, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v28, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v29, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v30, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v31, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v32, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v33, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v34, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v38, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v39, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v40, v6

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v41, v6

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_1

    move-object/from16 v35, v5

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v36, v6

    goto :goto_1

    :cond_1
    move-object/from16 v35, v5

    move-object/from16 v36, v20

    :goto_1
    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/template/c;->a()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v37, v5

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_2

    move/from16 v42, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v46, v5

    goto :goto_2

    :cond_2
    move/from16 v42, v6

    const/4 v6, 0x0

    move-object/from16 v46, v20

    :goto_2
    iget v5, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->i:I

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move/from16 v47, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v50, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v51, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v58, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v59, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v60, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v61, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v62, v5

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v13}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "position"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "eyeshadowside"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v45, v7

    const-string v7, "shapesrc"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_30

    move-object/from16 v48, v7

    :try_start_1
    const-string v7, "imagesrc"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2f

    move-object/from16 v49, v7

    :try_start_2
    const-string v7, "secondsrc"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2e

    move-object/from16 v52, v7

    :try_start_3
    const-string v7, "eyeleft"

    invoke-static {v14, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "eyetop"

    invoke-static {v15, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "eyeright"

    invoke-static {v10, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "eyebottom"

    invoke-static {v8, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browhead"

    invoke-static {v9, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browtop"

    invoke-static {v11, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browtail"

    invoke-static {v12, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "basicbrowhead"

    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "basicbrowtop"

    invoke-static {v2, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "basicbrowtail"

    invoke-static {v3, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "basiceyehead"

    invoke-static {v4, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "basiceyetop"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2d

    move-object/from16 v53, v1

    move-object/from16 v1, v35

    :try_start_4
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "basiceyetail"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2c

    move-object/from16 v35, v1

    move-object/from16 v1, v28

    :try_start_5
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorleft"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2b

    move-object/from16 v28, v1

    move-object/from16 v1, v29

    :try_start_6
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorright"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2a

    move-object/from16 v29, v1

    move-object/from16 v1, v30

    :try_start_7
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorlefttop"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_29

    move-object/from16 v30, v1

    move-object/from16 v1, v31

    :try_start_8
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorleftbottom"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_28

    move-object/from16 v31, v1

    move-object/from16 v1, v32

    :try_start_9
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorrighttop"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_27

    move-object/from16 v32, v1

    move-object/from16 v1, v33

    :try_start_a
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorrightbottom"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_26

    move-object/from16 v33, v1

    move-object/from16 v1, v34

    :try_start_b
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorlefteye"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_25

    move-object/from16 v34, v1

    move-object/from16 v1, v38

    :try_start_c
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorrighteye"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_24

    move-object/from16 v38, v1

    move-object/from16 v1, v39

    :try_start_d
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorleftface"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_23

    move-object/from16 v39, v1

    move-object/from16 v1, v40

    :try_start_e
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "modelanchorrightface"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_22

    move-object/from16 v40, v1

    move-object/from16 v1, v41

    :try_start_f
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browhead3d"

    invoke-static {v6, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browtop3d"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_21

    move-object/from16 v41, v1

    move-object/from16 v1, v50

    :try_start_10
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browtail3d"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_20

    move-object/from16 v50, v1

    move-object/from16 v1, v51

    :try_start_11
    invoke-static {v1, v0, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "browcurvature"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1f

    move-object/from16 v51, v1

    const/16 v1, -0x3e8

    :try_start_12
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1e

    move-object/from16 v54, v2

    :try_start_13
    const-string v2, "browthickness"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1d

    move/from16 v55, v2

    :try_start_14
    const-string v2, "browpositionx"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1c

    move/from16 v56, v2

    :try_start_15
    const-string v2, "browpositiony"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1b

    :try_start_16
    const-string v1, "browdefinition"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1a

    move/from16 v57, v2

    const/4 v2, -0x1

    :try_start_17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_19

    move/from16 p0, v1

    :try_start_18
    const-string v1, "oversizedratio"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    :try_start_19
    const-string v2, "browheadlocation"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_17

    move/from16 v63, v1

    const/16 v1, -0x3e8

    :try_start_1a
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    move/from16 v44, v2

    :try_start_1b
    const-string v2, "browtaillocation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    :try_start_1c
    const-string v2, "upperhead3d"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    move/from16 v64, v1

    move-object/from16 v1, v58

    :try_start_1d
    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "uppermiddle3d"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    move-object/from16 v58, v1

    move-object/from16 v1, v59

    :try_start_1e
    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "uppertail3d"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    move-object/from16 v59, v1

    move-object/from16 v1, v60

    :try_start_1f
    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "lowerhead3d"
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    move-object/from16 v60, v1

    move-object/from16 v1, v61

    :try_start_20
    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "lowermiddle3d"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    move-object/from16 v61, v1

    move-object/from16 v1, v62

    :try_start_21
    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v2, "lowertail3d"

    invoke-static {v5, v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    if-eqz v27, :cond_3

    :try_start_22
    invoke-static/range {v27 .. v27}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :goto_3
    move-object/from16 v62, v1

    goto :goto_7

    :catchall_0
    move-exception v0

    move/from16 v26, p0

    move-object/from16 v62, v1

    :goto_4
    move v13, v7

    :goto_5
    move-object/from16 v2, v20

    move-object v7, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v68, v27

    :goto_6
    const/16 p0, 0x0

    const/16 v16, 0x0

    const/16 v65, 0x0

    const/16 v67, 0x0

    goto/16 :goto_21

    :cond_3
    :try_start_23
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    goto :goto_3

    :goto_7
    :try_start_24
    const-string v1, "browgoldenratio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    move-object/from16 v27, v2

    move-object/from16 v2, v26

    :try_start_25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    move/from16 v26, v1

    :try_start_26
    const-string v1, "browmatchthickness"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    :try_start_27
    const-string v2, "shapesrc3d"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    move/from16 v65, v1

    :try_start_28
    const-string v1, "eyewearwidth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    move-object/from16 v66, v1

    move-object/from16 v1, v25

    :try_start_29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    :goto_8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v74, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v74

    goto :goto_e

    :catchall_1
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    :goto_9
    move-object/from16 v25, v24

    :goto_a
    move-object/from16 v68, v25

    :goto_b
    move/from16 v16, v26

    move-object/from16 v20, v66

    :goto_c
    const/16 v67, 0x0

    :goto_d
    move/from16 v26, p0

    const/16 p0, 0x0

    goto/16 :goto_21

    :cond_4
    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    goto :goto_8

    :cond_5
    const-string v1, "left_obb_path"
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    goto :goto_8

    :goto_e
    :try_start_2a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    :goto_f
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_10

    :catchall_2
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    move-object/from16 v22, v7

    move-object/from16 v24, v22

    goto :goto_9

    :cond_6
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    goto :goto_f

    :cond_7
    const-string v1, "right_obb_path"
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto :goto_f

    :goto_10
    :try_start_2b
    const-string v1, "wigshadowstrength"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    move-object/from16 v24, v1

    :try_start_2c
    const-string v1, "object_distance_ratio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    move-object/from16 v25, v1

    :try_start_2d
    const-string v1, "is_rigid_body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    move/from16 v67, v1

    :try_start_2e
    const-string v1, "object_distance_ratio_back"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6

    move-object/from16 v68, v1

    :try_start_2f
    const-string v1, "object_distance_ratio_palm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    const-string v1, "adaptive_rotate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    :try_start_30
    invoke-static/range {v45 .. v45}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    move-result-object v16
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_4

    :try_start_31
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_12

    :cond_8
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->LEFT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_11
    move-object/from16 v18, v21

    goto :goto_12

    :cond_9
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    if-eqz v0, :cond_a

    goto :goto_11

    :cond_a
    :goto_12
    move/from16 v73, v1

    move-object/from16 v21, v12

    move-object/from16 v13, v16

    move-object/from16 v72, v20

    move-object/from16 v12, v52

    move/from16 v52, v56

    move-object/from16 v1, v66

    move/from16 v70, v67

    move/from16 v56, p0

    move/from16 v67, v44

    move/from16 v66, v65

    move-object/from16 v44, v23

    move/from16 v65, v26

    move-object/from16 v23, v54

    move/from16 v54, v55

    move/from16 v55, v7

    move-object/from16 v7, v48

    move-object/from16 v48, v2

    move-object/from16 v45, v22

    move-object/from16 v69, v25

    move-object/from16 v71, v68

    move-object/from16 v20, v11

    move-object/from16 v11, v49

    move/from16 v68, v64

    move-object/from16 v64, v27

    move-object/from16 v26, v35

    move/from16 v35, v42

    move-object/from16 v42, v24

    move/from16 v2, v57

    move/from16 v57, v63

    goto/16 :goto_22

    :catchall_3
    move-exception v0

    move v13, v7

    move-object/from16 v21, v16

    :goto_13
    move-object/from16 v7, v20

    move/from16 v16, v26

    move-object/from16 v20, v66

    move/from16 v26, p0

    move/from16 p0, v1

    goto/16 :goto_21

    :catchall_4
    move-exception v0

    move v13, v7

    goto :goto_13

    :catchall_5
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    :goto_14
    move/from16 v16, v26

    move-object/from16 v20, v66

    goto/16 :goto_d

    :catchall_6
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    move-object/from16 v68, v7

    goto :goto_14

    :catchall_7
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    move-object/from16 v68, v7

    goto/16 :goto_b

    :catchall_8
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    move-object/from16 v25, v7

    goto/16 :goto_a

    :catchall_9
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    move-object/from16 v24, v7

    goto/16 :goto_9

    :catchall_a
    move-exception v0

    move v13, v7

    move-object/from16 v7, v20

    :goto_15
    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v68, v25

    move/from16 v16, v26

    goto/16 :goto_c

    :catchall_b
    move-exception v0

    move/from16 v65, v1

    move v13, v7

    move-object/from16 v2, v20

    move-object v7, v2

    goto :goto_15

    :catchall_c
    move-exception v0

    move v13, v7

    move-object/from16 v2, v20

    move-object v7, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v68, v25

    move/from16 v16, v26

    const/16 v65, 0x0

    goto/16 :goto_c

    :catchall_d
    move-exception v0

    :goto_16
    move/from16 v26, p0

    move v13, v7

    move-object/from16 v2, v20

    move-object v7, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v68, v25

    goto/16 :goto_6

    :catchall_e
    move-exception v0

    move-object/from16 v27, v2

    goto :goto_16

    :catchall_f
    move-exception v0

    move-object/from16 v62, v1

    :goto_17
    move/from16 v26, p0

    goto/16 :goto_4

    :catchall_10
    move-exception v0

    move-object/from16 v61, v1

    goto :goto_17

    :catchall_11
    move-exception v0

    move-object/from16 v60, v1

    goto :goto_17

    :catchall_12
    move-exception v0

    move-object/from16 v59, v1

    goto :goto_17

    :catchall_13
    move-exception v0

    move-object/from16 v58, v1

    goto :goto_17

    :catchall_14
    move-exception v0

    move/from16 v64, v1

    goto :goto_17

    :catchall_15
    move-exception v0

    move/from16 v26, p0

    move/from16 v64, v1

    goto/16 :goto_4

    :catchall_16
    move-exception v0

    :goto_18
    move/from16 v26, p0

    move/from16 v44, v1

    move/from16 v64, v44

    goto/16 :goto_4

    :catchall_17
    move-exception v0

    move/from16 v63, v1

    const/16 v1, -0x3e8

    goto :goto_18

    :catchall_18
    move-exception v0

    const/16 v1, -0x3e8

    move/from16 v26, p0

    move/from16 v44, v1

    move/from16 v64, v44

    move/from16 v63, v2

    goto/16 :goto_4

    :catchall_19
    move-exception v0

    const/16 v1, -0x3e8

    :goto_19
    move/from16 v44, v1

    move/from16 v64, v44

    :goto_1a
    move/from16 v26, v2

    move/from16 v63, v26

    goto/16 :goto_4

    :catchall_1a
    move-exception v0

    move/from16 v57, v2

    const/16 v1, -0x3e8

    const/4 v2, -0x1

    goto :goto_19

    :catchall_1b
    move-exception v0

    const/4 v2, -0x1

    move/from16 v44, v1

    move/from16 v57, v44

    :goto_1b
    move/from16 v64, v57

    goto :goto_1a

    :catchall_1c
    move-exception v0

    const/4 v2, -0x1

    move/from16 v44, v1

    move/from16 v56, v44

    :goto_1c
    move/from16 v57, v56

    goto :goto_1b

    :catchall_1d
    move-exception v0

    const/4 v2, -0x1

    move/from16 v44, v1

    move/from16 v55, v44

    move/from16 v56, v55

    goto :goto_1c

    :catchall_1e
    move-exception v0

    move-object/from16 v54, v2

    :goto_1d
    const/4 v2, -0x1

    move v13, v1

    move/from16 v44, v13

    move/from16 v55, v44

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v64, v57

    move/from16 v26, v2

    move/from16 v63, v26

    goto/16 :goto_5

    :catchall_1f
    move-exception v0

    move-object/from16 v51, v1

    :goto_1e
    move-object/from16 v54, v2

    const/16 v1, -0x3e8

    goto :goto_1d

    :catchall_20
    move-exception v0

    move-object/from16 v50, v1

    goto :goto_1e

    :catchall_21
    move-exception v0

    move-object/from16 v41, v1

    goto :goto_1e

    :catchall_22
    move-exception v0

    move-object/from16 v40, v1

    goto :goto_1e

    :catchall_23
    move-exception v0

    move-object/from16 v39, v1

    goto :goto_1e

    :catchall_24
    move-exception v0

    move-object/from16 v38, v1

    goto :goto_1e

    :catchall_25
    move-exception v0

    move-object/from16 v34, v1

    goto :goto_1e

    :catchall_26
    move-exception v0

    move-object/from16 v33, v1

    goto :goto_1e

    :catchall_27
    move-exception v0

    move-object/from16 v32, v1

    goto :goto_1e

    :catchall_28
    move-exception v0

    move-object/from16 v31, v1

    goto :goto_1e

    :catchall_29
    move-exception v0

    move-object/from16 v30, v1

    goto :goto_1e

    :catchall_2a
    move-exception v0

    move-object/from16 v29, v1

    goto :goto_1e

    :catchall_2b
    move-exception v0

    move-object/from16 v28, v1

    goto :goto_1e

    :catchall_2c
    move-exception v0

    move-object/from16 v35, v1

    goto :goto_1e

    :catchall_2d
    move-exception v0

    move-object/from16 v53, v1

    goto :goto_1e

    :catchall_2e
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    const/16 v1, -0x3e8

    const/4 v2, -0x1

    move v13, v1

    move/from16 v44, v13

    move/from16 v55, v44

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v64, v57

    move/from16 v26, v2

    move/from16 v63, v26

    move-object/from16 v2, v20

    move-object v7, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v52, v27

    :goto_1f
    move-object/from16 v68, v52

    goto/16 :goto_6

    :catchall_2f
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    const/16 v1, -0x3e8

    const/4 v2, -0x1

    move v13, v1

    move/from16 v44, v13

    move/from16 v55, v44

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v64, v57

    move/from16 v26, v2

    move/from16 v63, v26

    move-object/from16 v2, v20

    move-object v7, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v49, v27

    :goto_20
    move-object/from16 v52, v49

    goto :goto_1f

    :catchall_30
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    const/16 v1, -0x3e8

    const/4 v2, -0x1

    move v13, v1

    move/from16 v44, v13

    move/from16 v55, v44

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v64, v57

    move/from16 v26, v2

    move/from16 v63, v26

    move-object/from16 v2, v20

    move-object v7, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v48, v27

    move-object/from16 v49, v48

    goto :goto_20

    :goto_21
    const-string v1, "TemplateUtils"

    move-object/from16 v45, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v73, p0

    move-object/from16 v72, v7

    move-object/from16 v1, v20

    move-object/from16 v7, v48

    move/from16 v66, v65

    move/from16 v70, v67

    move/from16 v65, v16

    move/from16 v67, v44

    move-object/from16 v48, v45

    move-object/from16 v44, v23

    move-object/from16 v23, v54

    move/from16 v54, v55

    move/from16 v55, v13

    move-object/from16 v13, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v52

    move/from16 v52, v56

    move/from16 v56, v26

    move-object/from16 v69, v25

    move/from16 v2, v57

    move/from16 v57, v63

    move-object/from16 v71, v68

    move-object/from16 v20, v11

    move-object/from16 v11, v49

    move/from16 v68, v64

    move-object/from16 v45, v22

    move-object/from16 v64, v27

    move-object/from16 v26, v35

    move/from16 v35, v42

    move-object/from16 v42, v24

    :goto_22
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    move-object/from16 v16, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v63, v5

    move-object/from16 v49, v6

    move-object/from16 v16, v10

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v22, v53

    move-object/from16 v34, v1

    move/from16 v53, v2

    move-object v10, v7

    move-object v7, v0

    invoke-direct/range {v7 .. v73}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;IIIIIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Ljava/lang/String;ZZIILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public static d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->a:Ljava/lang/String;

    const-string p0, "makeup_template.xml"

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->b:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>()V

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/template/r;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p1, v1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/template/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    invoke-virtual {p1, p2, p3}, Lcom/perfectcorp/perfectlib/ph/template/r;->f(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/AbstractCollection;I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/c;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 33

    move-object/from16 v1, p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v10

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->c:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/template/m;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-result-object v6

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DEFAULT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-eq v6, v7, :cond_0

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/m$a;

    invoke-direct {v6, v5}, Lcom/perfectcorp/perfectlib/ph/template/m$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/m;)V

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    new-array v7, v12, [Ljava/util/List;

    aput-object v5, v7, v13

    aput-object v4, v7, v14

    invoke-static {v7}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v6, Lcom/perfectcorp/perfectlib/ph/template/m$a;->d:Ljava/util/List;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ph/template/m$a;->a()Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->h:Ljava/util/ArrayList;

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v5, Lxx0;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Lxx0;-><init>(I)V

    invoke-static {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->a(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;

    move-result-object v5

    iget-object v0, v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v3, v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->e(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v15, v14

    :goto_3
    if-gt v15, v9, :cond_3

    invoke-static {v8, v15}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->f(Ljava/util/AbstractCollection;I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-static {v7, v15}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->f(Ljava/util/AbstractCollection;I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v16

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v17

    if-eqz v17, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v19, v2

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v30, v9

    move/from16 v16, v13

    move/from16 p1, v14

    goto/16 :goto_9

    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    move/from16 p1, v14

    move-object v14, v0

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    move/from16 v16, v13

    move-object v13, v0

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/template/c;

    new-instance v12, Lcom/perfectcorp/perfectlib/ph/template/c$a;

    invoke-direct {v12, v14}, Lcom/perfectcorp/perfectlib/ph/template/c$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/c;)V

    iget-object v0, v14, Lcom/perfectcorp/perfectlib/ph/template/c;->c:Ljava/util/List;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/perfectcorp/perfectlib/ph/template/c;->c:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v19, v2

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/util/List;

    aput-object v18, v0, v16

    aput-object v20, v0, p1

    invoke-static {v0}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/c$a;->c:Ljava/util/List;

    const-string v0, "secondsrc"

    const-string v2, "imagesrc"

    move-object/from16 v18, v5

    const-string v5, "shapesrc"

    move-object/from16 v20, v6

    iget-object v6, v14, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    move-object/from16 v21, v7

    iget-object v7, v13, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    move-object/from16 v22, v8

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v23, v6

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v25

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v26

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v27

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v28, v6

    new-instance v6, Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v29, v7

    move/from16 v30, v9

    const/4 v7, 0x2

    :try_start_2
    new-array v9, v7, [Ljava/util/List;

    aput-object v29, v9, v16

    aput-object v26, v9, p1

    invoke-static {v9}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    const/4 v7, 0x2

    new-array v6, v7, [Ljava/util/List;

    aput-object v24, v6, v16

    aput-object v27, v6, p1

    invoke-static {v6}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/util/List;

    aput-object v25, v5, v16

    aput-object v28, v5, p1

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move/from16 v30, v9

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v23, v6

    goto :goto_6

    :goto_7
    const-string v2, "TemplateUtils"

    const-string v5, "mergeMaskExtra failed"

    invoke-static {v2, v5, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v6, v23

    :goto_8
    iput-object v6, v12, Lcom/perfectcorp/perfectlib/ph/template/c$a;->d:Ljava/lang/String;

    iget-object v0, v14, Lcom/perfectcorp/perfectlib/ph/template/c;->e:Ljava/util/List;

    iget-object v2, v13, Lcom/perfectcorp/perfectlib/ph/template/c;->e:Ljava/util/List;

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/util/List;

    aput-object v0, v5, v16

    aput-object v2, v5, p1

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/c$a;->e:Ljava/util/List;

    iget-object v0, v14, Lcom/perfectcorp/perfectlib/ph/template/c;->g:Ljava/util/List;

    iget-object v2, v13, Lcom/perfectcorp/perfectlib/ph/template/c;->g:Ljava/util/List;

    new-array v5, v7, [Ljava/util/List;

    aput-object v0, v5, v16

    aput-object v2, v5, p1

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/c$a;->g:Ljava/util/List;

    iget-object v0, v14, Lcom/perfectcorp/perfectlib/ph/template/c;->h:Ljava/util/List;

    iget-object v2, v13, Lcom/perfectcorp/perfectlib/ph/template/c;->h:Ljava/util/List;

    new-array v5, v7, [Ljava/util/List;

    aput-object v0, v5, v16

    aput-object v2, v5, p1

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/c$a;->h:Ljava/util/List;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/ph/template/c$a;->a()Lcom/perfectcorp/perfectlib/ph/template/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :goto_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, p1

    move/from16 v13, v16

    move-object/from16 v5, v18

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v30

    const/4 v12, 0x2

    goto/16 :goto_3

    :cond_8
    move-object/from16 v19, v2

    move/from16 v16, v13

    move/from16 p1, v14

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v12

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->i:Ljava/util/ArrayList;

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v4, Lxx0;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lxx0;-><init>(I)V

    invoke-static {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->a(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;

    move-result-object v0

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->e(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v7

    invoke-virtual {v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v2, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    goto :goto_a

    :cond_a
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v8, p1

    :goto_b
    if-gt v8, v7, :cond_9

    invoke-static {v5, v8}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->t(Ljava/util/AbstractCollection;I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v9

    invoke-static {v6, v8}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->t(Ljava/util/AbstractCollection;I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v13

    invoke-virtual {v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_d

    :cond_b
    :goto_c
    move-object/from16 v18, v0

    goto :goto_e

    :cond_c
    :goto_d
    invoke-virtual {v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    invoke-virtual {v2, v9}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_c

    :cond_d
    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    new-instance v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;

    invoke-direct {v14, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;)V

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->c:Ljava/util/List;

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->c:Ljava/util/List;

    move-object/from16 v18, v0

    const/4 v15, 0x2

    new-array v0, v15, [Ljava/util/List;

    aput-object v9, v0, v16

    aput-object v13, v0, p1

    invoke-static {v0}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->c:Ljava/util/List;

    new-instance v20, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    const-string v25, ""

    const-string v26, ""

    iget-object v9, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->a:Ljava/lang/String;

    iget-object v13, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->b:Ljava/lang/String;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->d:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v21, v9

    move-object/from16 v22, v13

    move-object/from16 v24, v14

    invoke-direct/range {v20 .. v26}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :goto_e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v18

    goto :goto_b

    :cond_e
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v13

    invoke-interface/range {v19 .. v19}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->d:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v14

    move/from16 v2, v16

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v15

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "db.insert exception: "

    const-string v3, "GUID"

    const/4 v4, 0x5

    const-string v5, "db.insert failed. id: "

    const-wide/16 v18, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_f

    :goto_10
    move-object/from16 v20, v0

    goto :goto_11

    :cond_f
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_10

    :goto_11
    const-string v8, "PatternInfoDao"

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    :try_start_3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    move/from16 v21, v4

    const-string v4, "GUID=?"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v22, v5

    :try_start_4
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v23, v2

    :try_start_5
    const-string v2, "PatternInfo"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v24, v8

    const/4 v8, 0x0

    move-object/from16 v25, v9

    const/4 v9, 0x0

    move-object/from16 v26, v6

    const/4 v6, 0x0

    move-object/from16 v27, v7

    const/4 v7, 0x0

    move-object/from16 v21, v22

    move-object/from16 v22, v15

    move-object/from16 v15, v21

    move-object/from16 v28, v10

    move-object/from16 v21, v14

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    :try_start_6
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_10

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_10

    move/from16 v2, p1

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_15

    :cond_10
    const/4 v2, 0x0

    :goto_12
    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_16

    :catchall_4
    move-exception v0

    :goto_13
    const/4 v6, 0x0

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v21, v22

    move-object/from16 v22, v15

    move-object/from16 v15, v21

    move-object/from16 v27, v7

    move-object/from16 v25, v9

    move-object/from16 v28, v10

    move-object/from16 v21, v14

    move-object/from16 v14, v23

    :goto_14
    move-object v10, v8

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object/from16 v21, v22

    move-object/from16 v22, v15

    move-object/from16 v15, v21

    move-object/from16 v27, v7

    move-object/from16 v25, v9

    move-object/from16 v28, v10

    move-object/from16 v21, v14

    move-object v14, v2

    goto :goto_14

    :catchall_7
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v25, v9

    move-object/from16 v28, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object v14, v2

    move-object v15, v5

    goto :goto_14

    :goto_15
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_11

    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move/from16 v2, p1

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Z)V

    goto :goto_17

    :cond_11
    move/from16 v2, p1

    :goto_17
    invoke-virtual/range {v27 .. v27}, Lcom/perfectcorp/perfectlib/ph/template/m;->b()Landroid/content/ContentValues;

    move-result-object v0

    :try_start_9
    const-string v3, "PatternInfo"

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v0, v3, v18

    if-gez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3, v10, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_8
    move-exception v0

    goto :goto_1a

    :cond_12
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v27

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static/range {v20 .. v20}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    :cond_13
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->f(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_18

    :cond_14
    :goto_19
    move/from16 p1, v2

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v10, v28

    goto/16 :goto_f

    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_15
    move-object v15, v5

    move-object/from16 v28, v10

    move-object/from16 v21, v14

    move-object v14, v2

    move/from16 v2, p1

    invoke-interface/range {v21 .. v21}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->e:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v4, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v6, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_16

    goto :goto_1c

    :cond_16
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1c
    invoke-static {v1, v5, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/d;Ljava/util/List;)V

    goto :goto_1b

    :cond_17
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->f:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/c;)V

    goto :goto_1d

    :cond_18
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    invoke-virtual {v13, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    invoke-static {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;)V

    goto :goto_1e

    :cond_19
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->h:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v4, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-static {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;)V

    goto :goto_1f

    :cond_1a
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->i:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v4, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-static {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;)V

    goto :goto_20

    :cond_1b
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->j:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v12

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_21
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v4, "Name"

    const-string v5, "ExtInt2"

    const-string v6, "ExtInt1"

    const-string v7, "ExtStr2"

    const-string v8, "ExtStr1"

    const-string v9, "ExtraData"

    if-eqz v0, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    move-object/from16 p1, v6

    const-string v6, "LookInfoDao"

    move-object/from16 v20, v6

    iget-object v6, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->a:Ljava/lang/String;

    move-object/from16 v21, v3

    :try_start_a
    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    move-object/from16 v22, v4

    :try_start_b
    const-string v4, "GUID=?"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    move-object/from16 v24, v5

    :try_start_c
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    move/from16 v25, v2

    :try_start_d
    const-string v2, "LookInfo"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    move-object/from16 v27, v8

    const/4 v8, 0x0

    move-object/from16 v29, v9

    const/4 v9, 0x0

    move-object/from16 v30, v6

    const/4 v6, 0x0

    move-object/from16 v31, v7

    const/4 v7, 0x0

    move-object/from16 v32, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v11

    move-object/from16 v11, v22

    move-object/from16 v22, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v29

    move/from16 v29, v25

    move-object/from16 v25, p1

    move-object/from16 p1, v13

    move-object/from16 v13, v30

    :try_start_e
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-eqz v6, :cond_1c

    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v0, :cond_1c

    move/from16 v2, v29

    goto :goto_22

    :catchall_a
    move-exception v0

    goto/16 :goto_27

    :cond_1c
    const/4 v2, 0x0

    :goto_22
    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto/16 :goto_28

    :catchall_b
    move-exception v0

    :goto_23
    const/4 v6, 0x0

    goto/16 :goto_27

    :catchall_c
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v27, v8

    move-object/from16 v32, v12

    move-object/from16 v12, v20

    move/from16 v29, v25

    move-object/from16 v25, p1

    move-object/from16 v20, v11

    move-object/from16 p1, v13

    move-object/from16 v11, v22

    move-object v13, v6

    :goto_24
    move-object/from16 v22, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v14

    :goto_25
    move-object v14, v9

    goto :goto_23

    :catchall_d
    move-exception v0

    move-object/from16 v25, p1

    move/from16 v29, v2

    :goto_26
    move-object/from16 v31, v7

    move-object/from16 v27, v8

    move-object/from16 v32, v12

    move-object/from16 p1, v13

    move-object/from16 v12, v20

    move-object v13, v6

    move-object/from16 v20, v11

    move-object/from16 v11, v22

    goto :goto_24

    :catchall_e
    move-exception v0

    move-object/from16 v25, p1

    move/from16 v29, v2

    move-object/from16 v24, v5

    goto :goto_26

    :catchall_f
    move-exception v0

    move-object/from16 v25, p1

    move/from16 v29, v2

    move-object/from16 v24, v5

    move-object/from16 v31, v7

    move-object/from16 v27, v8

    move-object/from16 v32, v12

    move-object/from16 p1, v13

    move-object/from16 v22, v15

    move-object/from16 v12, v20

    move-object/from16 v15, v21

    move-object v13, v6

    move-object/from16 v20, v11

    move-object/from16 v21, v14

    move-object v11, v4

    goto :goto_25

    :goto_27
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_1d

    invoke-static {v1, v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_1d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "Version"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Description"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ThumbImage"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PreviewImage"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Source"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SupportMode"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IsNew"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "false"

    move-object/from16 v3, v27

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->k:Ljava/lang/String;

    move-object/from16 v4, v31

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ExtStr3"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LookType"

    iget-object v3, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v25

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v6, v24

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ExtInt3"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_11
    const-string v2, "LookInfo"

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v0, v2, v18

    if-gez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    goto :goto_29

    :catchall_10
    move-exception v0

    goto :goto_2a

    :cond_1e
    move-object/from16 v7, v22

    :goto_29
    move-object/from16 v13, p1

    move-object v3, v15

    move-object/from16 v11, v20

    move-object/from16 v14, v21

    move/from16 v2, v29

    move-object/from16 v12, v32

    const/4 v10, 0x0

    move-object v15, v7

    goto/16 :goto_21

    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_11
    move-exception v0

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_1f
    move-object v2, v6

    move-object v6, v5

    move-object v5, v2

    move-object/from16 v20, v11

    move-object/from16 v32, v12

    move-object v2, v14

    move-object v11, v4

    move-object v4, v7

    move-object v14, v9

    move-object v7, v15

    move-object v15, v3

    move-object v3, v8

    invoke-interface/range {v32 .. v32}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    move-object/from16 v8, v20

    iget-object v9, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;

    const-string v12, "LookCategoryInfoDao"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 p1, v0

    iget-object v0, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;->a:Ljava/lang/String;

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type"

    move-object/from16 v16, v9

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;->b:Ljava/lang/String;

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Category"

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;->c:Ljava/lang/String;

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v13, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v13, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "db.insert to LookCategoryInfo: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-static {v9, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "LookCategoryInfo"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v0, v5, v18

    if-gez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5, v12, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    goto :goto_2c

    :catchall_12
    move-exception v0

    goto :goto_2d

    :cond_20
    :goto_2c
    move-object/from16 v0, p1

    move-object/from16 v9, v16

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto :goto_2b

    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_21
    move-object/from16 p1, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->l:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->k:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, ""

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->c:Ljava/util/HashMap;

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-static {v1, v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;)V

    goto :goto_2f

    :cond_22
    const-string v10, "EffectInfoDao"

    invoke-static {v1, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    move-result-object v13

    if-eqz v13, :cond_23

    move-object/from16 p1, v0

    goto/16 :goto_30

    :cond_23
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "PresetGUID"

    move-object/from16 p1, v0

    iget-object v0, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->b:Ljava/lang/String;

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PatternGUID"

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->c:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EffectType"

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->d:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ColorCount"

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->e:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ColorSetGUID"

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->f:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Intensity"

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->g:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ListOrder"

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->h:Ljava/lang/String;

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->i:Ljava/lang/String;

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ext_1"

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->j:Ljava/lang/String;

    invoke-virtual {v13, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ext_2"

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "db.insert to EffectInfo: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-static {v9, v10, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "EffectInfo"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    cmp-long v0, v12, v18

    if-gez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    invoke-static {v6, v10, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto :goto_30

    :catchall_13
    move-exception v0

    goto :goto_31

    :cond_24
    :goto_30
    move-object/from16 v0, p1

    goto/16 :goto_2e

    :goto_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_25
    move-object/from16 p1, v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    const-string v10, "LocalizationInfoDao"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "Lang"

    move-object/from16 p1, v0

    iget-object v0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;->a:Ljava/lang/String;

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;->b:Ljava/lang/String;

    invoke-virtual {v12, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Value"

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;->c:Ljava/lang/String;

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, v25

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v27, v3

    move-object/from16 v3, v24

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "db.insert to LocalizationInfo: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v6, v10, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "LocalizationInfo"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v3

    move-object/from16 v31, v4

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v0, v3, v18

    if-gez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3, v10, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    goto :goto_33

    :catchall_14
    move-exception v0

    goto :goto_34

    :cond_26
    :goto_33
    move-object/from16 v0, p1

    move-object/from16 v25, v13

    move-object/from16 v3, v27

    move-object/from16 v4, v31

    goto :goto_32

    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_27
    move-object/from16 p1, v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->n:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;

    const-string v5, "StyleInfoDao"

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->a:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;

    move-result-object v6

    if-eqz v6, :cond_29

    goto :goto_35

    :cond_29
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Ext1"

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Ext2"

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Ext3"

    invoke-virtual {v6, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Ext4"

    invoke-virtual {v6, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Ext5"

    invoke-virtual {v6, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "db.insert to StyleInfo: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    invoke-static {v10, v5, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v4, "StyleInfo"

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    cmp-long v4, v11, v18

    if-gez v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    goto :goto_35

    :catchall_15
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->o:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "palette_guid"

    const-string v6, "insert"

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;

    const-string v9, "PaletteStyleInfoDao"

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->a:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;

    move-result-object v10

    if-eqz v10, :cond_2c

    goto :goto_36

    :cond_2c
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->a:Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "style_guid"

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->b:Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v11, "inner_ratio"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v11, "feather_strength"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "intensity"

    invoke-virtual {v10, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_16
    const-string v4, "PaletteStyleInfo"

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v4, v10, v18

    if-gez v4, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5, v9, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    goto :goto_36

    :catchall_16
    move-exception v0

    invoke-static {v9, v6, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/u;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/template/u;->a:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/texture/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/u;

    move-result-object v9

    if-nez v9, :cond_2e

    goto :goto_38

    :cond_2e
    new-instance v10, Ljava/util/HashSet;

    iget-object v11, v9, Lcom/perfectcorp/perfectlib/ph/template/u;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/template/u;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/template/u;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/u;->a:Ljava/lang/String;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/template/u;->c:Ljava/lang/String;

    invoke-direct {v11, v4, v10, v9}, Lcom/perfectcorp/perfectlib/ph/template/u;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    move-object v4, v11

    :goto_38
    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/texture/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/u;)Lcom/perfectcorp/perfectlib/ph/template/u;

    goto :goto_37

    :cond_2f
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->q:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v3

    iget-object v0, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    const-string v9, "TextureInfoDao"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "PaletteID"

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->a:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "TextureID"

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    if-eqz v0, :cond_31

    sget-object v11, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->q()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object v0

    const-class v12, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v11, v0, v12}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_31
    const/4 v0, 0x0

    :goto_3a
    invoke-virtual {v10, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_17
    const-string v0, "PaletteTextureInfo"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    cmp-long v0, v12, v18

    if-gez v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x5

    invoke-static {v10, v9, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    goto :goto_39

    :catchall_17
    move-exception v0

    invoke-static {v9, v6, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    :cond_32
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->r:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v3, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/p;

    const-string v9, "ShapeInfoDao"

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/template/p;->a:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v10

    if-eqz v10, :cond_33

    move-object/from16 p1, v3

    const/4 v11, 0x2

    goto :goto_3c

    :cond_33
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/template/p;->a:Ljava/lang/String;

    invoke-virtual {v10, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Thumbnail"

    iget-object v12, v4, Lcom/perfectcorp/perfectlib/ph/template/p;->b:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/p;->c:Ljava/lang/String;

    invoke-virtual {v10, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "db.insert to ShapeInfo: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x2

    invoke-static {v11, v9, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v4, "ShapeInfo"

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 p1, v3

    const/4 v12, 0x0

    invoke-virtual {v1, v4, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v10, v3, v18

    if-gez v10, :cond_34

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    goto :goto_3c

    :catchall_18
    move-exception v0

    goto :goto_3d

    :cond_34
    :goto_3c
    move-object/from16 v3, p1

    goto :goto_3b

    :goto_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->s:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v2, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/b;

    const-string v4, "PaletteShapeInfoDao"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "shape_guid"

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_19
    const-string v3, "PaletteShapeInfo"

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    cmp-long v3, v7, v18

    if-gez v3, :cond_36

    const-string v3, "insert: row already exists (ignored)."

    const/4 v10, 0x5

    invoke-static {v10, v4, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    goto :goto_3e

    :catchall_19
    move-exception v0

    goto :goto_3f

    :cond_36
    const/4 v10, 0x5

    goto :goto_3e

    :goto_3f
    invoke-static {v4, v6, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_37
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    invoke-interface/range {v28 .. v28}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public static i(Landroid/graphics/Point;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v0, -0x1

    invoke-static {v0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/graphics/Point;->x:I

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method public static j(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ln2;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Ln2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    return-void

    :cond_0
    throw v0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "assets://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1

    :goto_1
    const-string v0, "TemplateUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static l(Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[booleanStringToBoolean] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not string. fieldName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemplateUtils"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[booleanStringToBoolean] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be parsed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TemplateUtils"

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public static n(Lorg/w3c/dom/NodeList;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getIsShimmer() fail. idx="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemplateUtils"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static o(Ljava/lang/String;I[F)[F
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-object v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[floatArrayStringToFloatArray] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be parsed. size="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemplateUtils"

    invoke-static {p1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F
    .locals 2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[floatArrayStringToFloatArray] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not string. fieldName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemplateUtils"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    check-cast p1, Ljava/lang/String;

    const/4 p0, 0x2

    invoke-static {p1, p0, p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->o(Ljava/lang/String;I[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;[F)[F
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput v0, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[hexColorStringToFloatArray] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be parsed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TemplateUtils"

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static r(Ljava/lang/String;Lorg/json/JSONObject;[F)[F
    .locals 2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hexColorStringToFloatArray] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not string. fieldName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemplateUtils"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->q(Ljava/lang/String;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v9, "Radius"

    const/4 v10, 0x0

    :try_start_0
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "PatternPaletteInfo"

    const-string v3, "PatternGUID=? AND PaletteGUID=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v10, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_1
    :try_start_3
    const-string p0, "PatternPaletteInfoDao"

    sget v0, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object v10, p0

    :goto_2
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static t(Ljava/util/AbstractCollection;I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const-string p0, "000000"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "hairdye_pattern_one_color_full"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->E:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    return-object p0

    :cond_1
    const-string v0, "hairdye_pattern_one_color_ombre"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    return-object p0

    :cond_2
    const-string v0, "getPattern: patternInfo == null, patternId: "

    const/4 v2, 0x5

    const-string v3, "TemplateUtils"

    invoke-static {v2, v0, p0, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/m;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;-><init>()V

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/template/m;->a()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->b:Ljava/lang/String;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/template/m;->i:Ljava/lang/String;

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->c:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->lipstickType:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;)V

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/template/m;->c:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/template/m;->m:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    move-result-object p0

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->faceArtLayer2:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    move-result-object p0

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->eyebrowMode3D:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    move-result-object p0

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->widthEnlarge:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->i:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->upperEnlarge:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->j:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->lowerEnlarge:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->k:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->hairDyePatternType:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    move-result-object p0

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->ombreRange:Ljava/lang/String;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->m:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->ombreLineOffset:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->n:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->transparency:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->o:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->light:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->reflection:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->p:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->contrast:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->q:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->roughness:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->r:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->finishType:Ljava/lang/String;

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->s:Ljava/lang/String;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->textureMode:Ljava/lang/String;

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->t:Ljava/lang/String;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->color:Ljava/lang/String;

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->u:Ljava/lang/String;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioThumb:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->v:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioFore:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->w:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioMiddle:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->x:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioRing:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->y:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->tipRatioLittle:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->z:F

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->shimmerOpacity:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->A:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->texturedGranularity:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->B:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b;->shimmerGranularity:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->C:I

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    invoke-direct {p0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;)V

    return-object p0
.end method

.method public static x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getPalette: paletteInfo == null, paletteId: "

    const/4 v2, 0x5

    const-string v3, "TemplateUtils"

    invoke-static {v2, v0, p0, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;-><init>()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;->b:Ljava/lang/String;

    iget v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->c:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;->c:I

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;->f:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette$Builder;)V

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;
    .locals 3

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->c:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;->d:I

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;-><init>(Ljava/lang/String;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/template/c;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->c(Lcom/perfectcorp/perfectlib/ph/template/c;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method
