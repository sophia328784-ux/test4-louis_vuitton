.class final Lcom/perfectcorp/perfectlib/ph/template/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/database/sqlite/SQLiteDatabase;

.field private synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

.field private synthetic c:Ljava/util/Collection;

.field private synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;Ljava/util/Collection;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/s;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/template/s;->b:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/template/s;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/template/s;->d:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->b:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->d:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->b:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>()V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DEFAULT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->d:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget v11, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->g:F

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->b:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    iget-object v14, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;->d:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v9, ""

    const/4 v12, 0x0

    const-string v13, ""

    const-string v15, ""

    const-string v16, ""

    invoke-direct/range {v4 .. v17}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/s;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v4, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/d;Ljava/util/List;)V

    return-void
.end method
