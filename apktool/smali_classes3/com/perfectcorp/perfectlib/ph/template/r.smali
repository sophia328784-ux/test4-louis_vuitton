.class public final Lcom/perfectcorp/perfectlib/ph/template/r;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

.field public final c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->d:Ljava/lang/String;

    iget-object p3, p2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->e:Ljava/lang/String;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    return-void
.end method

.method public static a(Lorg/w3c/dom/NodeList;I)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int p0, p0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getShimmerIntensity() fail. exception="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TemplateParser"

    invoke-static {v1, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/String;Lorg/w3c/dom/Node;IZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;
    .locals 28

    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "guid"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "glow_intensity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object/from16 v17, v1

    const-string v1, "coverage_intensity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "skin_smooth_intensity"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const-string v25, ""

    const-string v26, ""

    const-string v10, ""

    const-string v11, ""

    const-string v24, ""

    move-object/from16 v16, p8

    move-object/from16 v27, p14

    invoke-static/range {v10 .. v27}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v7, p15

    invoke-direct/range {v2 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "thumb/"

    const-string v0, "thumb_android/"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static e(Lorg/w3c/dom/Node;)Ljava/util/EnumMap;
    .locals 8

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;->values()[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    move-result-object v0

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    check-cast p0, Lorg/w3c/dom/Element;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string v6, ""

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/util/ArrayList;)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    move v2, v4

    :cond_4
    if-eqz v2, :cond_7

    new-instance p1, Lx5;

    const/16 v1, 0x13

    invoke-direct {p1, v1}, Lx5;-><init>(I)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->d:Ljava/lang/String;

    iget v6, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->e:I

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->i:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    invoke-direct/range {v1 .. v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    return-void
.end method

.method public static n(Lorg/w3c/dom/NodeList;)Lorg/json/JSONObject;
    .locals 9

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;->values()[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/e$d;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/template/e$d;-><init>()V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/e$g;->a:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[extractLookNameToJSON] error occur on assign a name to JSON from a field: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exception: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TemplateParser"

    invoke-static {v7, v5, v6}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;ILorg/w3c/dom/Node;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;
    .locals 25

    move-object/from16 v0, p3

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-eq v2, v3, :cond_0

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    const-string v12, ""

    const-string v13, ""

    const-string v8, "000000"

    const-string v11, "{}"

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v5 .. v13}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    const-string v2, "guid"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v0, 0x4

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v23, -0x1

    const-string v24, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-static/range {v14 .. v24}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->b(IIZIIIIIIILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    const-string v14, ""

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v6 .. v14}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final f(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V
    .locals 9

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->e:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "assets://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->normalize()V

    const-string v2, "makeup"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    sget v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    if-nez v2, :cond_1

    const-string v5, "pattern"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->q(Ljava/lang/String;Lorg/w3c/dom/Element;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-void

    :cond_2
    :try_start_1
    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->c:[Ljava/lang/String;

    array-length v0, p2

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_4

    aget-object v6, p2, v5

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v6, v7, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->i(Ljava/lang/String;Lorg/w3c/dom/Element;F)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "preset"

    invoke-interface {v2, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->g(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lorg/w3c/dom/NodeList;F)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/template/r;->o()V

    const-string p1, "Translation"

    invoke-interface {v2, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ph/template/r;->k(Lorg/w3c/dom/NodeList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-void

    :goto_2
    :try_start_2
    const-string p2, "TemplateParser"

    const-string v0, "TemplateParser.parse()"

    invoke-static {p2, v0, p1}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->b:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public final g(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lorg/w3c/dom/NodeList;F)V
    .locals 26

    move-object/from16 v1, p0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v10, v0, :cond_c

    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v2, "effect"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const-string v3, "look_category"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const-string v4, "description"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const-string v5, "guid"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "thumbnail"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/r;->d(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preview_image"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "supported_mode"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v7, "look_type"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/r;->n(Lorg/w3c/dom/NodeList;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;->values()[Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    move-result-object v7

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/e$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$a;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/e$g;->a:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->c()Lorg/json/JSONObject;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const-string v13, ""

    if-lez v0, :cond_1

    invoke-interface {v4, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/w3c/dom/Element;

    array-length v9, v7

    move-object/from16 v22, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_2

    aget-object v16, v7, v2

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v17, v2

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v18, :cond_0

    move-object/from16 v18, v4

    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    move-object/from16 v18, v4

    move-object v0, v13

    :goto_2
    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v18, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    move/from16 v17, v2

    goto :goto_3

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[extractDescriptionToJSON] error occur on assign a description to JSON from a field: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TemplateParser"

    invoke-static {v4, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v4, v18

    goto :goto_1

    :cond_1
    move-object/from16 v22, v2

    :cond_2
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    if-ge v2, v4, :cond_4

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->e(Lorg/w3c/dom/Node;)Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    iget-object v1, v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->m:Ljava/util/ArrayList;

    move/from16 v23, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    move-object/from16 v24, v3

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v5

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;->def:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v2, v3, v5, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto :goto_7

    :cond_3
    move/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    iget-object v1, v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->l:Ljava/util/ArrayList;

    move-object v2, v13

    new-instance v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;->def:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v3, v14

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v23, 0x1

    move-object v13, v2

    move-object/from16 v3, v24

    move v2, v1

    move-object/from16 v1, p0

    goto :goto_6

    :cond_4
    move-object/from16 v25, v5

    move-object v3, v14

    const/4 v5, 0x0

    :goto_8
    move-object v2, v13

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v5, v1, :cond_8

    invoke-interface {v12, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v4, "patterns"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v7, "pattern"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_9
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_6

    invoke-interface {v13, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    const-string v8, "palettes"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move/from16 v16, v10

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string v10, "palette"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    const/4 v11, 0x0

    :goto_a
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v11, v1, :cond_5

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    move/from16 v20, v4

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move-object/from16 v12, v22

    move-object/from16 v10, v25

    move/from16 v4, p3

    move-object/from16 v22, v13

    move-object v13, v2

    move-object/from16 v2, v17

    move/from16 v17, v11

    move-object v11, v6

    move-object v6, v7

    move-object v7, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/perfectcorp/perfectlib/ph/template/r;->j(Lorg/w3c/dom/Element;Ljava/lang/String;FILorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v17, 0x1

    move-object/from16 v17, v2

    move-object v7, v6

    move-object v6, v11

    move-object v2, v13

    move-object/from16 v10, v18

    move/from16 v4, v20

    move-object/from16 v13, v22

    move v11, v1

    move-object/from16 v22, v12

    move-object/from16 v12, v19

    goto :goto_a

    :cond_5
    move/from16 v20, v4

    move-object v11, v6

    move-object/from16 v19, v12

    move-object/from16 v12, v22

    move-object/from16 v10, v25

    move-object/from16 v22, v13

    move-object v13, v2

    move-object/from16 v2, v17

    add-int/lit8 v4, v20, 0x1

    move-object v1, v2

    move-object v2, v13

    move/from16 v10, v16

    move-object/from16 v13, v22

    move-object/from16 v11, p2

    move-object/from16 v22, v12

    move-object/from16 v12, v19

    goto/16 :goto_9

    :cond_6
    move-object v13, v2

    move-object v11, v6

    move/from16 v16, v10

    move-object/from16 v19, v12

    move-object/from16 v12, v22

    move-object/from16 v10, v25

    invoke-static {v9, v14}, Lcom/perfectcorp/perfectlib/ph/template/r;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    goto :goto_b

    :cond_7
    move-object v13, v2

    move-object v11, v6

    move/from16 v16, v10

    move-object/from16 v19, v12

    move-object/from16 v12, v22

    move-object/from16 v10, v25

    move-object v2, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/perfectcorp/perfectlib/ph/template/r;->j(Lorg/w3c/dom/Element;Ljava/lang/String;FILorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/util/ArrayList;)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v25, v10

    move-object v6, v11

    move-object/from16 v22, v12

    move/from16 v10, v16

    move-object/from16 v12, v19

    move-object/from16 v11, p2

    goto/16 :goto_8

    :cond_8
    move-object/from16 v1, p0

    move-object v13, v2

    move-object v11, v6

    move/from16 v16, v10

    move-object/from16 v12, v22

    move-object/from16 v10, v25

    invoke-static {v15}, Lcom/perfectcorp/perfectlib/ph/template/e$c;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/e$c;

    move-result-object v2

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/template/e$c;->a:Lcom/perfectcorp/perfectlib/ph/template/e$c;

    if-ne v2, v4, :cond_9

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/template/e$f;->b:Lcom/perfectcorp/perfectlib/ph/template/e$f;

    goto :goto_c

    :cond_9
    invoke-static/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/ph/template/e$f;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/e$f;

    move-result-object v2

    :goto_c
    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v5, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_d

    :cond_a
    const/4 v4, 0x0

    :goto_d
    iget-object v6, v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;

    invoke-direct {v7, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;-><init>(Ljava/lang/String;)V

    move/from16 v3, p3

    iput v3, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->b:F

    iput-object v12, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->c:Ljava/lang/String;

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->h:Ljava/lang/String;

    iput-boolean v4, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->i:Z

    iput-object v13, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->j:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    :goto_e
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    goto :goto_f

    :cond_b
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    goto :goto_e

    :goto_f
    iput-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->m:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    invoke-direct {v0, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v16, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final i(Ljava/lang/String;Lorg/w3c/dom/Element;F)V
    .locals 83

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_49

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "patterns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "pattern"

    if-eqz v5, :cond_1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    move/from16 v8, p3

    invoke-virtual {v1, v12, v6, v8}, Lcom/perfectcorp/perfectlib/ph/template/r;->q(Ljava/lang/String;Lorg/w3c/dom/Element;F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move/from16 v8, p3

    move-object v9, v1

    move-object/from16 v24, v2

    move/from16 v18, v4

    :goto_2
    const/16 v38, 0x0

    goto/16 :goto_49

    :cond_1
    move/from16 v8, p3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "colors"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "level_color"

    const-string v11, "color"

    iget-object v13, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    const-string v14, "sku_guid"

    const-string v15, "intensity"

    move/from16 v16, v5

    const-string v5, "color_number"

    move-object/from16 v17, v5

    const-string v5, "pattern_guid"

    const-string v3, "engine_color"

    move-object/from16 v19, v0

    const-string v0, "engine_colors"

    const/16 v20, 0x0

    move-object/from16 v21, v5

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    move-object/from16 v22, v6

    const/16 v23, 0x1

    if-eqz v16, :cond_12

    move-object/from16 v7, v19

    check-cast v7, Lorg/w3c/dom/Element;

    move-object/from16 v9, p2

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move v3, v2

    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move-object v0, v6

    goto :goto_4

    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v0, v20

    :goto_4
    invoke-interface {v7, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_b

    move-object v7, v3

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v2

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    move-object/from16 v22, v7

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v3

    move/from16 v16, v4

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_6
    move/from16 v28, v16

    goto :goto_7

    :cond_4
    move-object/from16 v3, v20

    goto :goto_6

    :goto_7
    const/16 v16, 0x0

    move-object/from16 v29, v17

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v30, v5

    const/4 v5, 0x0

    move/from16 v31, v6

    const/4 v6, -0x1

    move-object/from16 v32, v7

    const/4 v7, -0x1

    move-object/from16 v33, v10

    const/4 v10, 0x0

    move-object/from16 v34, v11

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object/from16 v35, v13

    const/4 v13, -0x1

    move-object/from16 v36, v14

    const/4 v14, -0x1

    move-object/from16 v37, v15

    const/4 v15, -0x1

    move-object/from16 v8, p1

    move-object v9, v3

    move-object/from16 v43, v21

    move-object/from16 v3, v26

    move/from16 v18, v28

    move-object/from16 v42, v29

    move-object/from16 v1, v30

    move/from16 v21, v31

    move-object/from16 v40, v36

    move-object/from16 v41, v37

    move-object/from16 v30, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v34

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    invoke-static/range {v2 .. v17}, Lcom/perfectcorp/perfectlib/ph/template/r;->c(Ljava/lang/String;Lorg/w3c/dom/Node;IZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v2

    move-object v12, v8

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_8

    :cond_5
    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    :goto_8
    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v32

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "eye_shadow"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "lipstick"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "face_contour_pattern"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "hair_dye"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-object/from16 v7, v35

    if-ne v7, v6, :cond_6

    move/from16 v10, v23

    :goto_9
    move-object/from16 v6, v42

    goto :goto_a

    :cond_6
    const/4 v10, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v9, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v11}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    new-instance v14, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v14, v11}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    invoke-virtual {v9, v14}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v5

    const/4 v5, 0x1

    move-object/from16 v29, v6

    const-string v6, ""

    move-object/from16 v35, v7

    const-string v7, ""

    const-string v14, ""

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    move/from16 v9, p3

    move-object/from16 v33, v0

    move-object/from16 v11, v25

    move-object/from16 v45, v29

    move-object/from16 v44, v32

    move-object/from16 v0, v35

    invoke-direct/range {v2 .. v15}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v0, v4, :cond_7

    goto :goto_c

    :cond_7
    :goto_b
    move-object/from16 v6, v43

    goto :goto_d

    :cond_8
    :goto_c
    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v33

    move-object/from16 v6, v43

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v4, v44

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v25, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v28

    const-string v32, ""

    sget-object v33, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    const/16 v29, 0x1

    const-string v31, ""

    move-object/from16 v27, v2

    invoke-direct/range {v25 .. v33}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    move-object/from16 v2, v25

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_9
    move-object/from16 v5, p0

    move-object/from16 v0, v35

    move-object/from16 v45, v42

    goto :goto_b

    :cond_a
    :goto_d
    add-int/lit8 v2, v21, 0x1

    move-object v3, v5

    move-object v5, v1

    move-object v1, v3

    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object v13, v0

    move-object/from16 v21, v6

    move/from16 v4, v18

    move-object/from16 v3, v22

    move-object/from16 v0, v34

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    move-object/from16 v17, v45

    move v6, v2

    move-object/from16 v2, v19

    goto/16 :goto_5

    :cond_b
    move-object v0, v5

    move-object v5, v1

    move-object v1, v0

    move-object/from16 v22, v3

    move/from16 v18, v4

    move-object v0, v13

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v45, v17

    move-object/from16 v6, v21

    const/4 v2, 0x0

    :goto_e
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_11

    move-object/from16 v3, v22

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/w3c/dom/Element;

    move-object/from16 v8, v41

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v9, v4, v12}, Lcom/perfectcorp/perfectlib/ph/template/r;->b(Ljava/lang/String;ILorg/w3c/dom/Node;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v4

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->g:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_f

    :cond_c
    iget-object v11, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    :goto_f
    iget-object v13, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move v13, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/d;

    move-object v14, v4

    iget-object v4, v14, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    move-object/from16 v37, v8

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    sget-object v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v0, v15, :cond_d

    move/from16 v15, v23

    :goto_10
    move-object/from16 v22, v3

    move-object v3, v11

    move-object/from16 v5, v40

    goto :goto_11

    :cond_d
    const/4 v15, 0x0

    goto :goto_10

    :goto_11
    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v36, v5

    move-object/from16 v5, v45

    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    move-object/from16 v17, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    move-object/from16 v19, v3

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    invoke-virtual {v10, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v5

    const/4 v5, 0x1

    move-object/from16 v21, v6

    const-string v6, ""

    move v3, v13

    move-object v13, v7

    const-string v7, ""

    move-object v10, v14

    const-string v14, ""

    move-object/from16 v34, v1

    move/from16 v16, v3

    move/from16 v46, v9

    move-object/from16 v47, v10

    move v10, v15

    move-object/from16 v3, v19

    move-object/from16 v51, v21

    move-object/from16 v50, v29

    move-object/from16 v48, v36

    move-object/from16 v49, v37

    move-object/from16 v1, p0

    move/from16 v9, p3

    move-object v15, v2

    move-object/from16 v2, v17

    invoke-direct/range {v2 .. v15}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v0, v4, :cond_f

    :cond_e
    move-object/from16 v4, v34

    goto :goto_12

    :cond_f
    move-object/from16 v4, v34

    goto :goto_13

    :goto_12
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->f:Ljava/util/ArrayList;

    move-object/from16 v14, v47

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v25, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v6, v46

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v32, ""

    sget-object v33, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    const/16 v29, 0x1

    const-string v31, ""

    move-object/from16 v27, v2

    invoke-direct/range {v25 .. v33}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    move-object/from16 v2, v25

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_13
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v12, p1

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v40, v48

    move-object/from16 v41, v49

    move-object/from16 v45, v50

    move-object/from16 v6, v51

    goto/16 :goto_e

    :cond_11
    move-object v9, v5

    goto/16 :goto_2

    :cond_12
    move-object/from16 v24, v2

    move/from16 v18, v4

    move-object v4, v5

    move-object/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v17

    move-object/from16 v51, v21

    move-object v2, v0

    move-object v0, v13

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "palettes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "texture"

    const-string v8, "feather_strength"

    const-string v12, "inner_ratio"

    const-string v13, "textures"

    const-string v14, "styles"

    const-string v15, "TemplateParser"

    move/from16 v16, v5

    const-string v5, "thumbnail"

    move-object/from16 v17, v5

    const-string v5, "guid"

    move-object/from16 v21, v6

    const-string v6, ""

    if-eqz v16, :cond_3c

    move-object/from16 v16, v6

    move-object/from16 v6, v19

    check-cast v6, Lorg/w3c/dom/Element;

    move-object/from16 v25, v7

    const-string v7, "palette"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v26, v8

    const/4 v7, 0x0

    :goto_14
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_3a

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    move-object/from16 v19, v6

    move/from16 v27, v7

    move-object/from16 v6, v48

    invoke-interface {v8, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    move-object/from16 v36, v6

    if-nez v28, :cond_13

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v6, "name"

    invoke-interface {v8, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v30, v4

    const-string v4, "color_is_shimmers"

    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v29, v7

    const-string v7, "shimmer_intensity"

    invoke-interface {v8, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    move-object/from16 v31, v9

    const-string v9, "glow_intensity"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object/from16 v32, v12

    const-string v12, "shimmer_density"

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    move-object/from16 v33, v12

    const-string v12, "shimmer_granularity"

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    move-object/from16 v34, v12

    const-string v12, "metallic_intensity"

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    move-object/from16 v35, v12

    const-string v12, "shimmer_color"

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    move-object/from16 v37, v12

    const-string v12, "inner_text"

    move-object/from16 v39, v9

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v9

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object/from16 v41, v9

    const-string v9, "supported_patterns"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object/from16 v42, v9

    invoke-interface {v8, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object/from16 v43, v9

    invoke-interface {v8, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object/from16 v44, v9

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/perfectcorp/perfectlib/ph/template/r;->l(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_15

    move-object/from16 v45, v5

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v0, v5, :cond_14

    goto :goto_15

    :cond_14
    move-object/from16 v35, v0

    move-object/from16 v47, v2

    move-object/from16 v48, v3

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    move-object/from16 v72, v13

    move-object/from16 v73, v14

    move-object/from16 v75, v15

    move-object/from16 v81, v17

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v34, v31

    move-object/from16 v78, v45

    move-object/from16 v29, v50

    move-object/from16 v43, v51

    const/16 v38, 0x0

    move-object/from16 v31, v21

    move-object/from16 v51, v32

    move-object/from16 v32, v10

    move-object/from16 v21, v16

    goto/16 :goto_3e

    :cond_15
    move-object/from16 v45, v5

    :goto_15
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v46, v5

    invoke-interface {v8, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_17

    move-object/from16 v47, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v48, v3

    :goto_16
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_16

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v53

    move/from16 v54, v1

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v53, v2

    const-string v2, "engine color string="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v15, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v54, 0x1

    move-object/from16 v2, v53

    goto :goto_16

    :cond_16
    move-object/from16 v53, v2

    move-object/from16 v1, v53

    goto :goto_17

    :cond_17
    move-object/from16 v47, v2

    move-object/from16 v48, v3

    move-object/from16 v1, v20

    :goto_17
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const-string v3, "shine_intensities"

    const-string v5, "color_intensities"

    if-lez v2, :cond_22

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v53, v6

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move-object/from16 v54, v10

    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v55

    move-object/from16 v56, v5

    const-string v5, ","

    if-eqz v55, :cond_18

    move-object/from16 v55, v11

    const/4 v11, 0x0

    new-array v10, v11, [Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v55, v11

    const/4 v11, 0x0

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :goto_18
    invoke-interface {v8, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v57

    if-eqz v57, :cond_19

    move-object/from16 v57, v3

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v57, v3

    const/4 v3, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_19
    const-string v11, "hair_dye_mode"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    if-lez v38, :cond_1b

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v3, "color_is_shimmer"

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eqz v4, :cond_1a

    if-eq v6, v4, :cond_1a

    move-object/from16 v58, v3

    const-string v3, ") != isShimmerCount("

    move-object/from16 v59, v8

    const-string v8, ") (paletteGuid="

    move-object/from16 v60, v11

    const-string v11, "parse() warning. colorCount("

    invoke-static {v6, v4, v11, v3, v8}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v15, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_1a
    move-object/from16 v58, v3

    move-object/from16 v59, v8

    move-object/from16 v60, v11

    :goto_1a
    move-object/from16 v3, v58

    goto :goto_1b

    :cond_1b
    move-object/from16 v59, v8

    move-object/from16 v60, v11

    move-object/from16 v3, v20

    :goto_1b
    const/4 v4, 0x0

    :goto_1c
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_20

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->n(Lorg/w3c/dom/NodeList;I)Z

    move-result v8

    move v11, v6

    invoke-static {v7, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v6

    move-object/from16 v58, v3

    move-object/from16 v3, v39

    move/from16 v39, v11

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v11

    move-object/from16 v61, v3

    move-object/from16 v3, v33

    move-object/from16 v33, v12

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v12

    move-object/from16 v62, v3

    move-object/from16 v3, v34

    move-object/from16 v34, v13

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v13

    move-object/from16 v63, v3

    move-object/from16 v3, v35

    move-object/from16 v35, v14

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v14

    move-object/from16 v64, v3

    move-object/from16 v3, v37

    move-object/from16 v37, v15

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v15

    move-object/from16 v65, v3

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-le v3, v4, :cond_1c

    move-object/from16 v3, v22

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v3

    goto :goto_1d

    :cond_1c
    move-object/from16 v66, v22

    move-object/from16 v22, v16

    :goto_1d
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v67, v2

    array-length v2, v10

    if-ge v4, v2, :cond_1d

    aget-object v2, v10, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move/from16 v68, v2

    goto :goto_1e

    :cond_1d
    const/16 v68, -0x1

    :goto_1e
    array-length v2, v5

    if-ge v4, v2, :cond_1e

    aget-object v2, v5, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v82, v7

    move v7, v2

    move-object/from16 v2, v82

    goto :goto_1f

    :cond_1e
    move-object v2, v7

    const/4 v7, -0x1

    :goto_1f
    move-object/from16 v69, v2

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1f

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_20
    move-object/from16 v70, v17

    goto :goto_21

    :cond_1f
    move-object/from16 v2, v20

    goto :goto_20

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v71, v1

    move-object/from16 v76, v25

    move-object/from16 v1, v30

    move-object/from16 v72, v34

    move-object/from16 v73, v35

    move-object/from16 v75, v37

    move-object/from16 v74, v40

    move-object/from16 v78, v45

    move-object/from16 v80, v56

    move-object/from16 v79, v57

    move-object/from16 v30, v59

    move-object/from16 v77, v70

    move-object/from16 v35, v0

    move-object/from16 v25, v5

    move v5, v8

    move-object/from16 v40, v26

    move-object/from16 v34, v31

    move-object/from16 v0, v32

    move-object/from16 v37, v33

    move-object/from16 v32, v54

    move-object/from16 v33, v55

    move-object/from16 v8, p1

    move/from16 v26, v4

    move-object/from16 v55, v9

    move-object/from16 v31, v21

    move/from16 v4, v68

    move-object v9, v2

    move-object/from16 v21, v16

    move-object/from16 v16, v22

    move-object/from16 v2, v46

    move-object/from16 v22, v10

    move-object/from16 v10, v60

    invoke-static/range {v2 .. v17}, Lcom/perfectcorp/perfectlib/ph/template/r;->c(Ljava/lang/String;Lorg/w3c/dom/Node;IZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v3

    move-object v12, v8

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v26, 0x1

    move-object/from16 v16, v21

    move-object/from16 v10, v22

    move-object/from16 v5, v25

    move-object/from16 v21, v31

    move-object/from16 v31, v34

    move-object/from16 v12, v37

    move/from16 v6, v39

    move-object/from16 v26, v40

    move-object/from16 v9, v55

    move-object/from16 v3, v58

    move-object/from16 v39, v61

    move-object/from16 v34, v63

    move-object/from16 v37, v65

    move-object/from16 v22, v66

    move-object/from16 v2, v67

    move-object/from16 v7, v69

    move-object/from16 v13, v72

    move-object/from16 v14, v73

    move-object/from16 v40, v74

    move-object/from16 v15, v75

    move-object/from16 v25, v76

    move-object/from16 v17, v77

    move-object/from16 v32, v0

    move-object/from16 v30, v1

    move-object/from16 v55, v33

    move-object/from16 v0, v35

    move-object/from16 v33, v62

    move-object/from16 v35, v64

    move-object/from16 v1, v71

    goto/16 :goto_1c

    :cond_20
    move-object/from16 v35, v0

    move/from16 v39, v6

    move-object/from16 v37, v12

    move-object/from16 v72, v13

    move-object/from16 v73, v14

    move-object/from16 v75, v15

    move-object/from16 v77, v17

    move-object/from16 v76, v25

    move-object/from16 v1, v30

    move-object/from16 v34, v31

    move-object/from16 v0, v32

    move-object/from16 v74, v40

    move-object/from16 v78, v45

    move-object/from16 v2, v46

    move-object/from16 v32, v54

    move-object/from16 v33, v55

    move-object/from16 v80, v56

    move-object/from16 v79, v57

    move-object/from16 v30, v59

    move-object/from16 v12, p1

    move-object/from16 v55, v9

    move-object/from16 v31, v21

    move-object/from16 v40, v26

    move-object/from16 v21, v16

    const/4 v3, 0x0

    :goto_22
    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_21

    move-object/from16 v4, v53

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/w3c/dom/Element;

    move-object/from16 v7, v49

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-static {v8, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v6

    move-object/from16 v9, p0

    invoke-virtual {v9, v2, v6, v5, v12}, Lcom/perfectcorp/perfectlib/ph/template/r;->b(Ljava/lang/String;ILorg/w3c/dom/Node;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_21
    move/from16 v5, v39

    const/4 v8, -0x1

    move-object/from16 v9, p0

    move-object/from16 v7, v49

    goto :goto_23

    :cond_22
    move-object/from16 v35, v0

    move-object/from16 v79, v3

    move-object/from16 v80, v5

    move-object/from16 v55, v9

    move-object/from16 v33, v11

    move-object/from16 v37, v12

    move-object/from16 v72, v13

    move-object/from16 v73, v14

    move-object/from16 v75, v15

    move-object/from16 v77, v17

    move-object/from16 v76, v25

    move-object/from16 v1, v30

    move-object/from16 v34, v31

    move-object/from16 v0, v32

    move-object/from16 v74, v40

    move-object/from16 v78, v45

    move-object/from16 v2, v46

    move-object/from16 v12, p1

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v31, v21

    move-object/from16 v40, v26

    move-object/from16 v21, v16

    const/4 v5, 0x0

    move-object/from16 v7, v49

    move-object/from16 v9, p0

    const/4 v8, -0x1

    :goto_23
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_23

    move-object/from16 v3, v43

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "style_guid"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_24
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_23

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v40

    invoke-interface {v6, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    const-string v13, "100"

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v54, v55

    invoke-static {v3, v4}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v55

    new-instance v53, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;

    move/from16 v57, v6

    move/from16 v56, v10

    move/from16 v58, v13

    invoke-direct/range {v53 .. v58}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v10, v53

    move-object/from16 v6, v54

    iget-object v13, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v55, v6

    goto :goto_24

    :cond_23
    move-object/from16 v11, v40

    move-object/from16 v6, v55

    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_27

    move-object/from16 v3, v44

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    move-object/from16 v4, v31

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v10, 0x0

    :goto_25
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v10, v13, :cond_26

    invoke-interface {v3, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v14

    if-eqz v14, :cond_25

    new-instance v14, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v14}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    move-object/from16 v46, v2

    const/4 v8, 0x0

    :goto_26
    invoke-interface {v15}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v8, v2, :cond_24

    invoke-interface {v15, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object/from16 v17, v2

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v22

    goto :goto_26

    :cond_24
    move-object/from16 v22, v3

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v74

    invoke-virtual {v14, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;

    invoke-direct {v2, v14}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    goto :goto_27

    :cond_25
    move-object/from16 v46, v2

    move-object/from16 v22, v3

    move-object/from16 v3, v74

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;-><init>(Ljava/lang/String;)V

    :goto_27
    new-instance v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    iget-object v13, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v13, v3}, Lcom/perfectcorp/common/gson/GsonHelper;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    move-result-object v2

    invoke-direct {v8, v6, v13, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;)V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v74, v3

    move-object/from16 v3, v22

    move-object/from16 v2, v46

    const/4 v8, -0x1

    goto :goto_25

    :cond_26
    :goto_28
    move-object/from16 v46, v2

    goto :goto_29

    :cond_27
    move-object/from16 v4, v31

    goto :goto_28

    :goto_29
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2c

    move-object/from16 v2, v41

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    move-object/from16 v8, v51

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v10, 0x0

    :goto_2a
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v10, v13, :cond_2b

    invoke-interface {v2, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2a

    move-object/from16 v14, v80

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    const-string v15, "hidden_intensity"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v17, v2

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    move-object/from16 v31, v4

    move/from16 v57, v5

    const/4 v4, 0x0

    :goto_2b
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_29

    invoke-interface {v13, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move/from16 v22, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_28

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_28

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    add-int/lit8 v4, v22, 0x1

    goto :goto_2b

    :cond_29
    new-instance v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v53, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v56

    const-string v59, ""

    move-object/from16 v61, v4

    move-object/from16 v55, v6

    invoke-direct/range {v53 .. v61}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    move-object/from16 v4, v53

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_2a
    move-object/from16 v17, v2

    move-object/from16 v31, v4

    move/from16 v57, v5

    move-object/from16 v14, v80

    :goto_2c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v80, v14

    move-object/from16 v2, v17

    move-object/from16 v4, v31

    move/from16 v5, v57

    goto/16 :goto_2a

    :cond_2b
    :goto_2d
    move-object/from16 v31, v4

    move/from16 v57, v5

    goto :goto_2e

    :cond_2c
    move-object/from16 v8, v51

    goto :goto_2d

    :goto_2e
    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_38

    move-object/from16 v2, v42

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    move-object/from16 v5, v76

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v10, v4

    :goto_2f
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v10, v13, :cond_37

    invoke-interface {v2, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    const-string v14, "color_references"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string v4, "color_reference"

    invoke-interface {v14, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v13, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v14, "thickness"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    const-string v2, "smoothness"

    invoke-interface {v13, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_36

    move-object/from16 v25, v5

    move-object/from16 v49, v7

    move-object/from16 v22, v21

    move-object/from16 v26, v22

    move-object/from16 v39, v26

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v56, v42

    move-object/from16 v59, v56

    const/4 v5, 0x0

    :goto_30
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    move-object/from16 v43, v8

    const-string v8, "coverage_level"

    move/from16 v44, v10

    const-string v10, "color_under_eye_intensity"

    move-object/from16 v45, v11

    const-string v11, "coloring_section"

    const-string v12, "ombre_line_offset"

    move-object/from16 v51, v0

    const-string v0, "ombre_range"

    if-ge v5, v7, :cond_35

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    move-object/from16 v52, v4

    invoke-static/range {v56 .. v56}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v53

    const-string v55, ", "

    if-eqz v53, :cond_2d

    move/from16 v53, v5

    move-object/from16 v5, v21

    goto :goto_31

    :cond_2d
    move/from16 v53, v5

    move-object/from16 v5, v55

    :goto_31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "palette_color_index"

    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v59 .. v59}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v5, v21

    goto :goto_32

    :cond_2e
    move-object/from16 v5, v55

    :goto_32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "color_intensity"

    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v22 .. v22}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v5, v21

    goto :goto_33

    :cond_2f
    move-object/from16 v5, v55

    :goto_33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "shine_intensity"

    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v26 .. v26}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    move-object/from16 v5, v21

    goto :goto_34

    :cond_30
    move-object/from16 v5, v55

    :goto_34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v39 .. v39}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v4, v21

    goto :goto_35

    :cond_31
    move-object/from16 v4, v55

    :goto_35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v40 .. v40}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object/from16 v4, v21

    goto :goto_36

    :cond_32
    move-object/from16 v4, v55

    :goto_36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v41 .. v41}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v4, v21

    goto :goto_37

    :cond_33
    move-object/from16 v4, v55

    :goto_37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v42 .. v42}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v4, v21

    goto :goto_38

    :cond_34
    move-object/from16 v4, v55

    :goto_38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    add-int/lit8 v5, v53, 0x1

    move-object/from16 v12, p1

    move-object/from16 v8, v43

    move/from16 v10, v44

    move-object/from16 v11, v45

    move-object/from16 v0, v51

    move-object/from16 v4, v52

    goto/16 :goto_30

    :cond_35
    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {v4, v14, v15}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v13}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v22

    move-object/from16 v5, v79

    invoke-virtual {v4, v5, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v26

    invoke-virtual {v4, v0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v4, v12, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v11, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v4, v10, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-virtual {v4, v8, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v53, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    move/from16 v58, v57

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v57

    const-string v60, ""

    const-string v61, ""

    move-object/from16 v62, v0

    move-object/from16 v55, v6

    invoke-direct/range {v53 .. v62}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    move-object/from16 v0, v53

    move/from16 v57, v58

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_36
    move-object/from16 v51, v0

    move-object/from16 v25, v5

    move-object/from16 v55, v6

    move-object/from16 v49, v7

    move-object/from16 v43, v8

    move/from16 v44, v10

    move-object/from16 v45, v11

    move-object/from16 v5, v79

    const/4 v2, 0x0

    :goto_39
    add-int/lit8 v10, v44, 0x1

    move-object/from16 v12, p1

    move v4, v2

    move-object/from16 v79, v5

    move-object/from16 v2, v17

    move-object/from16 v5, v25

    move-object/from16 v8, v43

    move-object/from16 v11, v45

    move-object/from16 v7, v49

    move-object/from16 v0, v51

    move-object/from16 v6, v55

    goto/16 :goto_2f

    :cond_37
    move v2, v4

    move-object/from16 v25, v5

    :goto_3a
    move-object/from16 v51, v0

    move-object/from16 v55, v6

    move-object/from16 v49, v7

    move-object/from16 v43, v8

    move-object/from16 v45, v11

    goto :goto_3b

    :cond_38
    move-object/from16 v25, v76

    const/4 v2, 0x0

    goto :goto_3a

    :goto_3b
    const-string v0, "transparency"

    move-object/from16 v8, v30

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "light"

    invoke-interface {v8, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "diffuse"

    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reflection"

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "contrast"

    invoke-interface {v8, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "roughness"

    invoke-interface {v8, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "finish_type"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v11}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    iput-object v0, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->a:Ljava/lang/String;

    iput-object v3, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->b:Ljava/lang/String;

    iput-object v4, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->c:Ljava/lang/String;

    iput-object v7, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->f:Ljava/lang/String;

    iput-object v5, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->d:Ljava/lang/String;

    iput-object v10, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->g:Ljava/lang/String;

    iput-object v6, v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->e:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v0, v11}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    move/from16 v38, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/d;

    invoke-static/range {v28 .. v28}, Lcom/perfectcorp/perfectlib/ph/template/r;->n(Lorg/w3c/dom/NodeList;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, v77

    invoke-interface {v8, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-object/from16 v10, v35

    if-ne v10, v5, :cond_39

    move/from16 v5, v23

    :goto_3c
    move-object/from16 v11, v50

    goto :goto_3d

    :cond_39
    move/from16 v5, v38

    goto :goto_3c

    :goto_3d
    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v12, "subtype"

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v8, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v8, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v29

    move-object/from16 v29, v11

    move-object v11, v0

    move-object/from16 v12, p1

    move/from16 v9, p3

    move-object/from16 v81, v3

    move-object v8, v4

    move-object/from16 v35, v10

    move-object/from16 v0, v45

    move-object/from16 v4, v46

    move-object/from16 v3, v55

    move v10, v5

    move/from16 v5, v57

    invoke-direct/range {v2 .. v15}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e
    add-int/lit8 v7, v27, 0x1

    move-object/from16 v26, v0

    move-object v4, v1

    move-object/from16 v6, v19

    move-object/from16 v16, v21

    move-object/from16 v50, v29

    move-object/from16 v21, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    move-object/from16 v9, v34

    move-object/from16 v0, v35

    move-object/from16 v22, v37

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    move-object/from16 v12, v51

    move-object/from16 v13, v72

    move-object/from16 v14, v73

    move-object/from16 v15, v75

    move-object/from16 v5, v78

    move-object/from16 v17, v81

    move-object/from16 v1, p0

    move-object/from16 v48, v36

    move-object/from16 v51, v43

    goto/16 :goto_14

    :cond_3a
    const/16 v38, 0x0

    :cond_3b
    move-object/from16 v9, p0

    goto/16 :goto_49

    :cond_3c
    move-object v1, v4

    move-object/from16 v78, v5

    move-object v0, v8

    move-object/from16 v51, v12

    move-object/from16 v72, v13

    move-object/from16 v73, v14

    move-object/from16 v75, v15

    move-object/from16 v81, v17

    move-object/from16 v31, v21

    const/16 v38, 0x0

    move-object/from16 v21, v6

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v73

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v2, v19

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "style"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move/from16 v3, v38

    :goto_3f
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_3b

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v5, v78

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v51

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->n:Ljava/util/ArrayList;

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;

    invoke-direct {v10, v6, v8, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_3d
    move-object/from16 v5, v78

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v72

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v9, p0

    iget-object v2, v9, Lcom/perfectcorp/perfectlib/ph/template/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_3f

    move-object/from16 v0, v19

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v4, v31

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move/from16 v3, v38

    :goto_40
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_48

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v81

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/perfectcorp/perfectlib/ph/template/r;->d(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->p:Ljava/util/ArrayList;

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/template/u;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3e

    invoke-static {v2, v4}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_3e
    move-object/from16 v4, v21

    :goto_41
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v11, v21

    invoke-direct {v10, v6, v4, v11}, Lcom/perfectcorp/perfectlib/ph/template/u;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v81, v7

    goto :goto_40

    :cond_3f
    move-object/from16 v11, v21

    move-object/from16 v7, v81

    const-string v0, "shapes"

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    move-object/from16 v0, v19

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v3, "shape"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    move/from16 v4, v38

    :goto_42
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_48

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "mask"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "shadow"

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "highlight"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "lip_shape_ombre"

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "itemZIP"

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    const-string v2, "height_intensity"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v3

    const-string v3, "height_upper_intensity"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v19, v4

    const-string v4, "height_lower_intensity"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v45, v5

    const-string v5, "size_intensity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v70, v7

    const-string v7, "width_intensity"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v11

    const-string v11, "mshaped_intensity"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v15

    const-string v15, "lip_shape_roi_start"

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_40

    invoke-static/range {v16 .. v16}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v22, v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/perfectcorp/perfectlib/ph/template/r;->d(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_43

    :cond_40
    move-object/from16 v22, v0

    move-object/from16 v8, v21

    :goto_43
    invoke-virtual {v9, v10}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v10

    invoke-virtual {v9, v13}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v26, v12

    invoke-virtual {v9, v14}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_41

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_41

    move/from16 v25, v38

    goto :goto_44

    :cond_41
    move/from16 v25, v23

    :goto_44
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_42

    invoke-static {v15}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_42

    move/from16 v25, v38

    :cond_42
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_43

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_43

    move/from16 v25, v38

    :cond_43
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_44

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_44

    move/from16 v25, v38

    :cond_44
    if-eqz v25, :cond_47

    const/4 v13, -0x1

    invoke-static {v13, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v2

    invoke-static {v13, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v3

    invoke-static {v13, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v4

    invoke-static {v13, v5}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v5

    invoke-static {v13, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v7

    invoke-static {v13, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "attr_guid"

    invoke-virtual {v14, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "attr_thumbnail"

    invoke-virtual {v14, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "attr_mask"

    invoke-virtual {v14, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_shadow"

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_highlight"

    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_lip_shape_ombre"

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_height_intensity"

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "attr_height_upper_intensity"

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "attr_height_lower_intensity"

    invoke-virtual {v14, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "attr_size_intensity"

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "attr_width_intensity"

    invoke-virtual {v14, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "attr_mshaped_intensity"

    invoke-virtual {v14, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "attr_lip_shape_roi_start"

    if-eqz v22, :cond_45

    move-object/from16 v2, v22

    goto :goto_45

    :cond_45
    move-object/from16 v2, v21

    :goto_45
    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "attr_itemZIP"

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    move-object/from16 v2, v20

    goto :goto_46

    :cond_46
    move-object/from16 v2, v21

    :goto_46
    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, v75

    goto :goto_47

    :catch_0
    move-exception v0

    const-string v2, "parseShapes: JSON build failed"

    move-object/from16 v3, v75

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v21

    :goto_47
    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/p;

    invoke-direct {v2, v6, v8, v0}, Lcom/perfectcorp/perfectlib/ph/template/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_47
    move-object/from16 v3, v75

    :goto_48
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v75, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v11, v21

    move-object/from16 v5, v45

    move-object/from16 v7, v70

    goto/16 :goto_42

    :cond_48
    :goto_49
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v12, p1

    move-object v1, v9

    move-object/from16 v2, v24

    goto/16 :goto_0

    :cond_49
    return-void
.end method

.method public final j(Lorg/w3c/dom/Element;Ljava/lang/String;FILorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/util/ArrayList;)V
    .locals 115

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "name"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v8

    const/16 v23, 0x1

    add-int/lit8 v7, p4, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget-object v24, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v9, "pattern_guid"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const-string v11, "palette_guid"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const-string v13, "sku_guid"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const-string v14, "effect_type"

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const-string v15, "global_intensity"

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    move-object/from16 v25, v5

    const-string v5, "color"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 p4, v7

    const-string v7, "color_intensity"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    move-object/from16 v16, v8

    const-string v8, "color_is_shimmer"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object/from16 v26, v5

    const-string v5, "shimmer_intensity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v27, v5

    const-string v5, "glow_intensity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v28, v5

    const-string v5, "shimmer_density"

    move-object/from16 v17, v8

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object/from16 v29, v5

    const-string v5, "intensity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v18, v8

    const-string v8, "hidden_intensity"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object/from16 v19, v7

    const-string v7, "shine_intensity"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    move-object/from16 v30, v6

    const-string v6, "metallic_intensity"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v31, v6

    const-string v6, "shimmer_color"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object/from16 v32, v6

    const-string v6, "radius"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v33, v2

    const-string v2, "level_color"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object/from16 v34, v2

    const-string v2, "feather_strength"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object/from16 v35, v2

    const-string v2, "inner_ratio"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object/from16 v36, v2

    const-string v2, "colored_mask_index"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object/from16 v20, v7

    const-string v7, "position"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    move-object/from16 v21, v6

    const-string v6, "foundation_intensity_mode"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v22, v6

    const-string v6, "browdefinition"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v37, v6

    const-string v6, "browcurvature"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v38, v6

    const-string v6, "browthickness"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v39, v6

    const-string v6, "browpositionx"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v40, v6

    const-string v6, "browpositiony"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v41, v6

    const-string v6, "browheadlocation"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v42, v6

    const-string v6, "browtaillocation"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v43, v6

    const-string v6, "sku_set"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object/from16 v44, v8

    const-string v8, "ombre_range"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object/from16 v45, v5

    const-string v5, "ombre_line_offset"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v46, v5

    const-string v5, "textures"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v47, v5

    const-string v5, "thickness"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v48, v5

    const-string v5, "smoothness"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v49, v5

    const-string v5, "nail_position"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v50, v5

    const-string v5, "transparency"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v51, v5

    const-string v5, "light"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v52, v5

    const-string v5, "diffuse"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v53, v5

    const-string v5, "reflection"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v54, v5

    const-string v5, "contrast"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v55, v5

    const-string v5, "roughness"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v56, v5

    const-string v5, "finish_type"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v57, v5

    const-string v5, "shimmer_opacity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v58, v5

    const-string v5, "textured_granularity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v59, v5

    const-string v5, "shimmer_granularity"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v60, v5

    const-string v5, "object_distance_ratio"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v61, v5

    const-string v5, "is_rigid_body"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v62, v5

    const-string v5, "object_distance_ratio_back"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v63, v5

    const-string v5, "object_distance_ratio_palm"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v64, v5

    const-string v5, "adaptive_rotate"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v65, v5

    const-string v5, "fullness"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v66, v5

    const-string v5, "wrinkless"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/16 v67, 0x0

    move-object/from16 v68, v5

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pattern_mask_index"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object/from16 v70, v9

    goto :goto_2

    :cond_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v10, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, v67

    :goto_1
    move-object/from16 v3, v67

    goto :goto_0

    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "palette_color_index"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v12, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_3

    :cond_3
    move-object/from16 v9, v67

    :goto_3
    move-object/from16 v4, v67

    :goto_4
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_4

    invoke-static {v13, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_4
    move-object/from16 v10, v67

    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    if-nez v11, :cond_5

    iget-object v11, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_6

    invoke-static {v14, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    goto :goto_6

    :cond_6
    move-object/from16 v13, v67

    :goto_6
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    const-string v79, ""

    if-lez v11, :cond_7

    invoke-static {v15, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object/from16 v11, v79

    :goto_7
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_8

    invoke-static {v2, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object/from16 v2, v79

    :goto_8
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_9

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_9
    move-object/from16 v7, v79

    :goto_9
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_a

    invoke-static {v6, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_a
    move-object/from16 v6, v67

    :goto_a
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_b

    invoke-static {v8, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_b
    move-object/from16 v8, v67

    :goto_b
    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_c

    move-object/from16 v14, v46

    invoke-static {v14, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_c
    move-object/from16 v14, v67

    :goto_c
    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_d

    move-object/from16 v15, v48

    invoke-static {v15, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, v79

    :goto_d
    invoke-interface/range {v49 .. v49}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v46

    move-object/from16 p5, v7

    if-lez v46, :cond_e

    move-object/from16 v7, v49

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    :cond_e
    move-object/from16 v7, v79

    :goto_e
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v46

    move-object/from16 p6, v7

    if-lez v46, :cond_f

    move-object/from16 v7, v45

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_f
    move-object/from16 v7, v79

    :goto_f
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v45

    if-lez v45, :cond_10

    move-object/from16 v45, v7

    move-object/from16 v7, v44

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_10
    move-object/from16 v45, v7

    move-object/from16 v7, v79

    :goto_10
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v44

    if-lez v44, :cond_11

    move-object/from16 v44, v7

    move-object/from16 v7, v21

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :cond_11
    move-object/from16 v44, v7

    move-object/from16 v7, v79

    :goto_11
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_12

    move-object/from16 v21, v7

    move-object/from16 v7, v20

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :cond_12
    move-object/from16 v21, v7

    move-object/from16 v7, v79

    :goto_12
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_13

    move-object/from16 v7, v44

    :cond_13
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_14

    move-object/from16 v20, v7

    move-object/from16 v7, v22

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    :cond_14
    move-object/from16 v20, v7

    move-object/from16 v7, v79

    :goto_13
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-lez v22, :cond_15

    move-object/from16 v22, v7

    move-object/from16 v7, v37

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    :cond_15
    move-object/from16 v22, v7

    move-object/from16 v7, v79

    :goto_14
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    if-lez v37, :cond_16

    move-object/from16 v37, v7

    move-object/from16 v7, v38

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    :cond_16
    move-object/from16 v37, v7

    move-object/from16 v7, v79

    :goto_15
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    if-lez v38, :cond_17

    move-object/from16 v38, v7

    move-object/from16 v7, v39

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    :cond_17
    move-object/from16 v38, v7

    move-object/from16 v7, v79

    :goto_16
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v39

    if-lez v39, :cond_18

    move-object/from16 v39, v7

    move-object/from16 v7, v40

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :cond_18
    move-object/from16 v39, v7

    move-object/from16 v7, v79

    :goto_17
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v40

    if-lez v40, :cond_19

    move-object/from16 v40, v7

    move-object/from16 v7, v41

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_19
    move-object/from16 v40, v7

    move-object/from16 v7, v79

    :goto_18
    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v41

    if-lez v41, :cond_1a

    move-object/from16 v41, v7

    move-object/from16 v7, v42

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_19

    :cond_1a
    move-object/from16 v41, v7

    move-object/from16 v7, v79

    :goto_19
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    if-lez v42, :cond_1b

    move-object/from16 v42, v7

    move-object/from16 v7, v43

    invoke-static {v7, v5}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1a

    :cond_1b
    move-object/from16 v42, v7

    move-object/from16 v7, v79

    :goto_1a
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v43

    const-string v5, "TemplateParser"

    if-eqz v43, :cond_1c

    move-object/from16 v43, v7

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    move-object/from16 v46, v8

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-eq v7, v8, :cond_1d

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parse() warning. colorCount(0) != isShimmerCount("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") (presetGUID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8, v5, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_1c
    move-object/from16 v43, v7

    move-object/from16 v46, v8

    :cond_1d
    :goto_1b
    iget-object v7, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->c:Ljava/util/HashMap;

    iget-object v8, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    move-object/from16 v48, v15

    iget-object v15, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    move-object/from16 v49, v15

    iget-object v15, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->c:Ljava/util/HashMap;

    move-object/from16 v69, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v71, v12

    move-object/from16 v12, v30

    invoke-virtual {v7, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-lez v7, :cond_2e

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v72

    invoke-static/range {v72 .. v72}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v73

    const-string v7, "engine_color"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    move-object/from16 v75, v8

    const-string v8, "inner_text"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object/from16 v80, v6

    move-object/from16 v76, v15

    move-object/from16 v6, v67

    const/4 v15, 0x0

    :goto_1c
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v15, v0, :cond_2b

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move-object/from16 v77, v10

    if-le v0, v15, :cond_1e

    move-object/from16 v10, v19

    invoke-interface {v10, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    move-object/from16 v10, v17

    move/from16 v17, v0

    goto :goto_1d

    :cond_1e
    move-object/from16 v10, v17

    const/16 v17, -0x1

    :goto_1d
    invoke-static {v10, v15}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->n(Lorg/w3c/dom/NodeList;I)Z

    move-result v78

    move-object/from16 v81, v4

    move-object/from16 v4, v27

    move-object/from16 v27, v11

    invoke-static {v4, v15}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v11

    move-object/from16 p1, v4

    move-object/from16 v4, v28

    move-object/from16 v28, v16

    invoke-static {v4, v15}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v16

    move-object/from16 v82, v4

    move-object/from16 v4, v18

    move/from16 v18, v17

    invoke-static {v4, v15}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v17

    move-object/from16 v83, v4

    move-object/from16 v4, v60

    move/from16 v60, v18

    invoke-static {v4, v15}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v18

    move-object/from16 v84, v3

    move-object/from16 v3, v31

    move-object/from16 v31, v19

    invoke-static {v3, v15}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v19

    move-object/from16 v85, v3

    move-object/from16 v3, v33

    move-object/from16 v33, v20

    invoke-static {v3, v15}, Lcom/perfectcorp/perfectlib/ph/template/r;->a(Lorg/w3c/dom/NodeList;I)I

    move-result v20

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-le v0, v15, :cond_1f

    invoke-interface {v8, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v21

    move-object/from16 v21, v0

    goto :goto_1e

    :cond_1f
    move-object/from16 v86, v21

    move-object/from16 v21, v79

    :goto_1e
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-le v0, v15, :cond_20

    invoke-interface {v12, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_20
    move-object/from16 v0, v79

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v87

    if-eqz v87, :cond_28

    const-string v0, "wig"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    move-object/from16 v88, v3

    move-object/from16 v89, v8

    move-object/from16 v91, v10

    :goto_20
    move-object/from16 v0, v79

    goto/16 :goto_26

    :cond_21
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v87, v0

    invoke-virtual {v1, v9}, Lcom/perfectcorp/perfectlib/ph/template/r;->m(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->b:Ljava/lang/String;

    move-object/from16 v88, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v89, v8

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/template/r;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v87

    if-eqz v87, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    move-object/from16 v90, v8

    move-object/from16 v8, v87

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-object/from16 v91, v10

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    move-object/from16 v8, v90

    move-object/from16 v10, v91

    goto :goto_21

    :cond_23
    move-object/from16 v91, v10

    move-object v0, v3

    goto :goto_22

    :cond_24
    move-object/from16 v88, v3

    move-object/from16 v89, v8

    move-object/from16 v91, v10

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_22

    :cond_25
    move-object/from16 v0, v87

    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v15, :cond_26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    goto :goto_23

    :cond_26
    move-object/from16 v0, v67

    :goto_23
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->f:Ljava/lang/String;

    goto :goto_24

    :catchall_0
    move-exception v0

    goto :goto_25

    :cond_27
    move-object/from16 v0, v79

    :goto_24
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_26

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :goto_26
    move-object/from16 v3, v26

    goto :goto_27

    :cond_28
    move-object/from16 v88, v3

    move-object/from16 v89, v8

    move-object/from16 v91, v10

    goto :goto_26

    :goto_27
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    move v10, v15

    const/4 v15, 0x0

    move-object/from16 v26, v22

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v87, v12

    const/4 v12, -0x1

    move-object/from16 v92, p5

    move-object/from16 v96, p6

    move-object/from16 v94, v14

    move-object/from16 v97, v26

    move-object/from16 v98, v37

    move-object/from16 v99, v38

    move-object/from16 v100, v39

    move-object/from16 v101, v40

    move-object/from16 v102, v41

    move-object/from16 v103, v42

    move-object/from16 v104, v43

    move-object/from16 v93, v46

    move-object/from16 v95, v48

    move-object/from16 p5, v69

    move-object/from16 v26, v77

    move-object v14, v0

    move-object/from16 v40, v7

    move/from16 v39, v10

    move-object/from16 v37, v27

    move-object/from16 v7, v28

    move-object/from16 v38, v33

    move/from16 v10, v78

    move-object/from16 v33, v2

    move-object/from16 v27, v3

    move-object/from16 v3, v30

    move-object/from16 v2, v76

    move-object/from16 v30, p4

    move-object/from16 p4, v5

    move-object v5, v9

    move/from16 v9, v60

    move-object/from16 v60, v4

    move-object/from16 v4, v71

    invoke-static/range {v7 .. v22}, Lcom/perfectcorp/perfectlib/ph/template/r;->c(Ljava/lang/String;Lorg/w3c/dom/Node;IZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v0

    move-object v8, v7

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->d:Ljava/lang/String;

    if-nez v6, :cond_29

    move-object v6, v9

    goto :goto_28

    :cond_29
    const-string v10, ","

    invoke-static {v6, v10, v9}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_28
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2a

    move-object v9, v7

    goto :goto_29

    :cond_2a
    move-object v9, v5

    :goto_29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v39, 0x1

    move-object/from16 v5, p4

    move-object/from16 v69, p5

    move-object/from16 v76, v2

    move-object/from16 v71, v4

    move-object/from16 v16, v8

    move-object/from16 v10, v26

    move-object/from16 v26, v27

    move-object/from16 p4, v30

    move-object/from16 v19, v31

    move-object/from16 v2, v33

    move-object/from16 v11, v37

    move-object/from16 v20, v38

    move-object/from16 v7, v40

    move-object/from16 v4, v81

    move-object/from16 v28, v82

    move-object/from16 v18, v83

    move-object/from16 v31, v85

    move-object/from16 v21, v86

    move-object/from16 v12, v87

    move-object/from16 v33, v88

    move-object/from16 v8, v89

    move-object/from16 v17, v91

    move-object/from16 p5, v92

    move-object/from16 v46, v93

    move-object/from16 v14, v94

    move-object/from16 v48, v95

    move-object/from16 p6, v96

    move-object/from16 v22, v97

    move-object/from16 v37, v98

    move-object/from16 v38, v99

    move-object/from16 v39, v100

    move-object/from16 v40, v101

    move-object/from16 v41, v102

    move-object/from16 v42, v103

    move-object/from16 v43, v104

    move-object/from16 v27, p1

    move-object/from16 v30, v3

    move-object/from16 v3, v84

    goto/16 :goto_1c

    :cond_2b
    move-object/from16 v92, p5

    move-object/from16 v96, p6

    move-object/from16 v33, v2

    move-object/from16 v84, v3

    move-object/from16 v81, v4

    move-object v5, v9

    move-object/from16 v26, v10

    move-object/from16 v94, v14

    move-object/from16 v8, v16

    move-object/from16 v31, v19

    move-object/from16 v86, v21

    move-object/from16 v97, v22

    move-object/from16 v3, v30

    move-object/from16 v98, v37

    move-object/from16 v99, v38

    move-object/from16 v100, v39

    move-object/from16 v101, v40

    move-object/from16 v102, v41

    move-object/from16 v103, v42

    move-object/from16 v104, v43

    move-object/from16 v93, v46

    move-object/from16 v95, v48

    move-object/from16 p5, v69

    move-object/from16 v4, v71

    move-object/from16 v2, v76

    move-object/from16 v30, p4

    move-object/from16 v37, v11

    move-object/from16 v38, v20

    invoke-virtual {v1, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->m(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;

    move-result-object v0

    if-eqz v0, :cond_2c

    goto :goto_2a

    :cond_2c
    invoke-virtual {v1, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    move/from16 v0, v23

    goto :goto_2b

    :cond_2d
    :goto_2a
    const/4 v0, 0x0

    :goto_2b
    move-object v9, v5

    goto :goto_2c

    :cond_2e
    move-object/from16 v92, p5

    move-object/from16 v96, p6

    move-object/from16 v33, v2

    move-object/from16 v84, v3

    move-object/from16 v81, v4

    move-object/from16 v80, v6

    move-object/from16 v75, v8

    move-object/from16 v26, v10

    move-object/from16 v94, v14

    move-object v2, v15

    move-object/from16 v8, v16

    move-object/from16 v31, v19

    move-object/from16 v86, v21

    move-object/from16 v97, v22

    move-object/from16 v3, v30

    move-object/from16 v98, v37

    move-object/from16 v99, v38

    move-object/from16 v100, v39

    move-object/from16 v101, v40

    move-object/from16 v102, v41

    move-object/from16 v103, v42

    move-object/from16 v104, v43

    move-object/from16 v93, v46

    move-object/from16 v95, v48

    move-object/from16 p5, v69

    move-object/from16 v4, v71

    move-object/from16 v30, p4

    move-object/from16 v37, v11

    move-object/from16 v38, v20

    move-object/from16 v6, v67

    move-object/from16 v73, v6

    const/4 v0, 0x0

    const/16 v72, 0x0

    :goto_2c
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v72

    invoke-static/range {v72 .. v72}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v73

    const/4 v0, 0x0

    :goto_2d
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_31

    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move-object/from16 v10, v31

    if-le v5, v0, :cond_2f

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v12, v5

    :goto_2e
    move-object/from16 v5, v34

    goto :goto_2f

    :cond_2f
    const/4 v12, -0x1

    goto :goto_2e

    :goto_2f
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v1, v8, v12, v7, v13}, Lcom/perfectcorp/perfectlib/ph/template/r;->b(Ljava/lang/String;ILorg/w3c/dom/Node;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v7

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->g:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_30

    move-object v9, v11

    :cond_30
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v34, v5

    move-object/from16 v31, v10

    goto :goto_2d

    :cond_31
    invoke-virtual {v1, v9}, Lcom/perfectcorp/perfectlib/ph/template/r;->m(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;

    move-result-object v0

    if-eqz v0, :cond_32

    goto :goto_30

    :cond_32
    invoke-virtual {v1, v9}, Lcom/perfectcorp/perfectlib/ph/template/r;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    move/from16 v0, v23

    goto :goto_31

    :cond_33
    :goto_30
    const/4 v0, 0x0

    :cond_34
    :goto_31
    move-object v2, v9

    move-object v9, v8

    move-object v8, v2

    move/from16 v10, v72

    move-object/from16 v2, v73

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_36

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v35

    const/4 v11, 0x0

    invoke-static {v7, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, v36

    invoke-static {v12, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v12

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->n:Ljava/util/ArrayList;

    new-instance v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;

    invoke-direct {v14, v5, v12, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->q:Ljava/util/ArrayList;

    new-instance v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;

    if-eqz v8, :cond_35

    move-object v15, v8

    :goto_32
    move-object/from16 v16, v5

    const/4 v5, -0x1

    goto :goto_33

    :cond_35
    move-object v15, v9

    goto :goto_32

    :goto_33
    invoke-static {v5, v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v17

    invoke-static {v5, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v18

    const-string v7, "100"

    invoke-static {v5, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v19

    invoke-direct/range {v14 .. v19}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v16

    goto :goto_34

    :cond_36
    move-object/from16 v5, v67

    :goto_34
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_38

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v11, 0x0

    :goto_35
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_37

    move-object/from16 v12, v47

    invoke-interface {v12, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_37
    move-object/from16 v24, v7

    :cond_38
    invoke-interface/range {v51 .. v51}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_39

    move-object/from16 v7, v51

    const/4 v11, 0x0

    invoke-static {v7, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_36

    :cond_39
    const/4 v11, 0x0

    move-object/from16 v7, v79

    :goto_36
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_3a

    move-object/from16 v12, v52

    invoke-static {v12, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_37

    :cond_3a
    move-object/from16 v12, v79

    :goto_37
    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_3b

    move-object/from16 v14, v53

    invoke-static {v14, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_38

    :cond_3b
    move-object/from16 v14, v79

    :goto_38
    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_3c

    move-object/from16 v15, v54

    invoke-static {v15, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_39

    :cond_3c
    move-object/from16 v15, v79

    :goto_39
    invoke-interface/range {v55 .. v55}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move-object/from16 p1, v6

    if-lez v16, :cond_3d

    move-object/from16 v6, v55

    invoke-static {v6, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3a

    :cond_3d
    move-object/from16 v6, v79

    :goto_3a
    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move-object/from16 p4, v8

    if-lez v16, :cond_3e

    move-object/from16 v8, v56

    invoke-static {v8, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3b

    :cond_3e
    move-object/from16 v8, v79

    :goto_3b
    invoke-interface/range {v57 .. v57}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    if-lez v16, :cond_3f

    move-object/from16 v16, v9

    move-object/from16 v9, v57

    invoke-static {v9, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3c

    :cond_3f
    move-object/from16 v16, v9

    move-object/from16 v9, v79

    :goto_3c
    invoke-interface/range {v50 .. v50}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v74, v10

    if-lez v17, :cond_40

    move-object/from16 v10, v50

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3d

    :cond_40
    move-object/from16 v10, v79

    :goto_3d
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move-object/from16 p6, v10

    if-lez v17, :cond_41

    move-object/from16 v10, v58

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3e

    :cond_41
    move-object/from16 v10, v79

    :goto_3e
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_42

    move-object/from16 v17, v10

    move-object/from16 v10, v59

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3f

    :cond_42
    move-object/from16 v17, v10

    move-object/from16 v10, v79

    :goto_3f
    invoke-interface/range {v60 .. v60}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_43

    move-object/from16 v18, v10

    move-object/from16 v10, v60

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_40

    :cond_43
    move-object/from16 v18, v10

    move-object/from16 v10, v79

    :goto_40
    invoke-interface/range {v61 .. v61}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_44

    move-object/from16 v19, v10

    move-object/from16 v10, v61

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_41

    :cond_44
    move-object/from16 v19, v10

    move-object/from16 v10, v79

    :goto_41
    invoke-interface/range {v62 .. v62}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_45

    move-object/from16 v20, v10

    move-object/from16 v10, v62

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_42

    :cond_45
    move-object/from16 v20, v10

    move-object/from16 v10, v79

    :goto_42
    invoke-interface/range {v63 .. v63}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-lez v21, :cond_46

    move-object/from16 v21, v10

    move-object/from16 v10, v63

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_43

    :cond_46
    move-object/from16 v21, v10

    move-object/from16 v10, v79

    :goto_43
    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-lez v22, :cond_47

    move-object/from16 v22, v10

    move-object/from16 v10, v64

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_44

    :cond_47
    move-object/from16 v22, v10

    move-object/from16 v10, v79

    :goto_44
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    if-lez v27, :cond_48

    move-object/from16 v27, v10

    move-object/from16 v10, v65

    invoke-static {v10, v11}, Lz81;->h(Lorg/w3c/dom/NodeList;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_45

    :cond_48
    move-object/from16 v27, v10

    move-object/from16 v10, v79

    :goto_45
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v31

    if-lez v31, :cond_49

    move-object/from16 v31, v10

    move-object/from16 v10, v66

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_46

    :cond_49
    move-object/from16 v31, v10

    :goto_46
    invoke-interface/range {v68 .. v68}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_4a

    move-object/from16 v10, v68

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4a
    new-instance v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v10}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    iput-object v7, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->a:Ljava/lang/String;

    iput-object v12, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->b:Ljava/lang/String;

    iput-object v14, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->c:Ljava/lang/String;

    iput-object v15, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->d:Ljava/lang/String;

    iput-object v6, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->e:Ljava/lang/String;

    iput-object v8, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->f:Ljava/lang/String;

    iput-object v9, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->g:Ljava/lang/String;

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v11, v10}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    if-eqz v0, :cond_4e

    if-eqz p4, :cond_4c

    move-object v0, v7

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/template/d;

    invoke-static/range {v25 .. v25}, Lcom/perfectcorp/perfectlib/ph/template/r;->n(Lorg/w3c/dom/NodeList;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v25, v17

    move-object/from16 v17, v13

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v34, v0

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-object/from16 v1, v75

    if-ne v1, v0, :cond_4b

    goto :goto_47

    :cond_4b
    const/16 v23, 0x0

    :goto_47
    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v0, v11}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v12

    const-string v12, ""

    move-object/from16 v35, v9

    move-object/from16 v9, v16

    const-string v16, ""

    move-object/from16 v36, v18

    const-string v18, ""

    move-object/from16 v39, v19

    const-string v19, ""

    move-object/from16 v105, v8

    move-object/from16 v110, v20

    move-object/from16 v111, v21

    move-object/from16 v112, v22

    move-object/from16 v107, v25

    move-object/from16 v113, v27

    move-object/from16 v114, v31

    move-object/from16 v106, v35

    move-object/from16 v108, v36

    move-object/from16 v109, v39

    move-object/from16 v8, p4

    move-object/from16 v20, v0

    move-object/from16 v22, v2

    move-object/from16 v21, v5

    move-object/from16 v27, v6

    move-object v2, v11

    move-object/from16 v31, v15

    move/from16 v15, v23

    move-object/from16 v0, v24

    move-object/from16 v5, v34

    move-object/from16 v6, p6

    move-object/from16 v24, v3

    move-object v11, v10

    move-object v3, v14

    move/from16 v10, v74

    move/from16 v14, p3

    invoke-direct/range {v7 .. v20}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v7

    move-object/from16 v7, v49

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v75, v1

    move-object/from16 v13, v17

    goto/16 :goto_49

    :cond_4c
    move-object/from16 v105, v8

    move-object/from16 v106, v9

    move-object/from16 v9, v16

    move-object/from16 v107, v17

    move-object/from16 v108, v18

    move-object/from16 v109, v19

    move-object/from16 v110, v20

    move-object/from16 v111, v21

    move-object/from16 v112, v22

    move-object/from16 v0, v24

    move-object/from16 v113, v27

    move-object/from16 v114, v31

    move/from16 v10, v74

    move-object/from16 v1, v75

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move-object/from16 v21, v5

    move-object/from16 v27, v6

    move-object v5, v7

    move-object v2, v12

    move-object/from16 v17, v13

    move-object v3, v14

    move-object/from16 v31, v15

    move-object/from16 v6, p6

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/template/d;

    invoke-static/range {v25 .. v25}, Lcom/perfectcorp/perfectlib/ph/template/r;->n(Lorg/w3c/dom/NodeList;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    sget-object v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v1, v8, :cond_4d

    move/from16 v15, v23

    goto :goto_48

    :cond_4d
    const/4 v15, 0x0

    :goto_48
    sget-object v8, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v12, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v12}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    new-instance v14, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v14, v12}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    invoke-virtual {v8, v14}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v12, ""

    const-string v16, ""

    const-string v18, ""

    const-string v19, ""

    move-object v8, v9

    move/from16 v14, p3

    move-object/from16 v75, v1

    move-object/from16 v1, v49

    invoke-direct/range {v7 .. v20}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, v17

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_49
    iget-object v1, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    move-object/from16 v71, v8

    goto :goto_4b

    :cond_4e
    move-object/from16 v105, v8

    move-object/from16 v106, v9

    move-object/from16 v9, v16

    move-object/from16 v107, v17

    move-object/from16 v108, v18

    move-object/from16 v109, v19

    move-object/from16 v110, v20

    move-object/from16 v111, v21

    move-object/from16 v112, v22

    move-object/from16 v0, v24

    move-object/from16 v113, v27

    move-object/from16 v114, v31

    move/from16 v10, v74

    move-object/from16 v8, p4

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move-object/from16 v21, v5

    move-object/from16 v27, v6

    move-object v5, v7

    move-object v2, v12

    move-object v3, v14

    move-object/from16 v31, v15

    move-object/from16 v6, p6

    goto :goto_4a

    :goto_4b
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;-><init>()V

    move-object/from16 v7, v45

    const/4 v8, -0x1

    invoke-static {v8, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a:I

    move-object/from16 v7, v38

    invoke-static {v8, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->b:I

    move-object/from16 v7, v86

    invoke-static {v8, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->c:I

    move-object/from16 v7, v98

    invoke-static {v8, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v7

    const/16 v8, -0x3e8

    move-object/from16 v11, v99

    invoke-static {v8, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    move-object/from16 v12, v100

    invoke-static {v8, v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v12

    move-object/from16 v14, v101

    invoke-static {v8, v14}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v14

    move-object/from16 v15, v102

    invoke-static {v8, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v15

    move/from16 v74, v10

    move-object/from16 v10, v103

    invoke-static {v8, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move-object/from16 v16, v9

    move-object/from16 v9, v104

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v8

    iput v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->d:I

    iput v11, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->e:I

    iput v12, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->f:I

    iput v14, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->g:I

    iput v15, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->h:I

    iput v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->i:I

    iput v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->j:I

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    move-result-object v1

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;-><init>()V

    if-eqz v71, :cond_4f

    move-object/from16 v8, v71

    goto :goto_4c

    :cond_4f
    move-object/from16 v8, v79

    :goto_4c
    iput-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->a:Ljava/lang/String;

    move/from16 v14, p3

    iput v14, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->b:F

    move-object/from16 v11, v37

    const/4 v8, -0x1

    invoke-static {v8, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->c:I

    move-object/from16 v9, v33

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->d:I

    move-object/from16 v9, v92

    iput-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->e:Ljava/lang/String;

    move-object/from16 v9, v97

    iput-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->f:Ljava/lang/String;

    if-eqz v84, :cond_50

    if-eqz v81, :cond_50

    move-object/from16 v9, v84

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->g:I

    move-object/from16 v10, v81

    invoke-static {v8, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->h:I

    new-instance v11, Landroid/util/Pair;

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v69, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v73

    const-string v77, ""

    const/16 v78, 0x0

    const-string v76, ""

    move-object/from16 v75, p1

    move-object/from16 v72, v10

    invoke-direct/range {v69 .. v78}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    move-object/from16 v12, v69

    move-object/from16 v9, v70

    move-object/from16 v10, v71

    invoke-direct {v11, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, p7

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_50
    move-object/from16 v9, v70

    move-object/from16 v10, v71

    :goto_4d
    if-eqz v26, :cond_51

    move-object/from16 v8, v26

    goto :goto_4e

    :cond_51
    move-object/from16 v8, v79

    :goto_4e
    iput-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->j:Ljava/lang/String;

    move-object/from16 v8, v80

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->k:Ljava/lang/String;

    move-object/from16 v8, v93

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->l:Ljava/lang/String;

    move-object/from16 v14, v94

    iput-object v14, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->m:Ljava/lang/String;

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->i:Ljava/util/List;

    move-object/from16 v15, v95

    const/4 v8, -0x1

    invoke-static {v8, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->o:I

    move-object/from16 v11, v96

    invoke-static {v8, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->p:I

    iput-object v6, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->A:Ljava/lang/String;

    iput-object v5, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->q:Ljava/lang/String;

    iput-object v2, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->r:Ljava/lang/String;

    iput-object v3, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->s:Ljava/lang/String;

    move-object/from16 v15, v31

    iput-object v15, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->t:Ljava/lang/String;

    move-object/from16 v6, v27

    iput-object v6, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->u:Ljava/lang/String;

    move-object/from16 v8, v105

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->v:Ljava/lang/String;

    move-object/from16 v0, v106

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->w:Ljava/lang/String;

    move-object/from16 v0, v107

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->x:Ljava/lang/String;

    move-object/from16 v0, v108

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->y:Ljava/lang/String;

    move-object/from16 v0, v109

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->z:Ljava/lang/String;

    move-object/from16 v0, v110

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->K:Ljava/lang/String;

    move-object/from16 v0, v111

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->L:Ljava/lang/String;

    move-object/from16 v0, v112

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->M:Ljava/lang/String;

    move-object/from16 v0, v113

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->N:Ljava/lang/String;

    move-object/from16 v0, v114

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->O:Ljava/lang/String;

    const-string v0, "blush"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static/range {p5 .. p5}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_52

    move-object/from16 v2, p5

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_4f
    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    goto :goto_50

    :cond_52
    const/4 v11, 0x0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4f

    :cond_53
    move-object/from16 v0, v67

    :goto_50
    if-eqz v0, :cond_57

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->B:Ljava/lang/String;

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v3, "glow_strength"

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_54
    move-object/from16 v0, v67

    :goto_51
    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->C:Ljava/lang/String;

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_55
    move-object/from16 v0, v67

    :goto_52
    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->E:Ljava/lang/String;

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v67

    :cond_56
    move-object/from16 v0, v67

    iput-object v0, v7, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->D:Ljava/lang/String;

    :cond_57
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    invoke-direct {v0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;)V

    iget-object v2, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->k:Ljava/util/ArrayList;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;

    move-object/from16 v8, p2

    move-object/from16 v12, v24

    invoke-direct {v3, v12, v8, v9, v13}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    iput-object v8, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->f:Ljava/lang/String;

    move-object/from16 v4, v22

    iput-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->g:Ljava/lang/String;

    move-object/from16 v1, v30

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->i:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->j:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    invoke-direct {v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    invoke-virtual {v1, v9, v13}, Lcom/perfectcorp/perfectlib/ph/template/r;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k(Lorg/w3c/dom/NodeList;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/r;->e(Lorg/w3c/dom/Node;)Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->m:Ljava/util/ArrayList;

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;->def:Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;

    invoke-virtual {v1, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, p1, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final m(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/d;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o()V
    .locals 11

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/template/d;->k:Ljava/lang/String;

    invoke-virtual {p0, v7, v6}, Lcom/perfectcorp/perfectlib/ph/template/r;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/d;->k:Ljava/lang/String;

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v6

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v7, :cond_8

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v7, :cond_8

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/template/u;

    iget-object v9, v8, Lcom/perfectcorp/perfectlib/ph/template/u;->a:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_b

    goto :goto_2

    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    sget-object v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v5

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-direct {v8, v6, v9, v5, v10}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object p2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-direct {v1, p1, v2, p2, p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final q(Ljava/lang/String;Lorg/w3c/dom/Element;F)V
    .locals 141

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "guid"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/template/e$f;->a:Lcom/perfectcorp/perfectlib/ph/template/e$f;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    const-string v14, "thumbnail"

    invoke-interface {v1, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->d(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "texture_supported_mode"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "hidden_in_room"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "wig_coloring_mode"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "face_art_layer2"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "wig_model_mode"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ombre_range"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ombre_line_offset"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sku_guid"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "width_enlarge"

    invoke-interface {v1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "upper_enlarge"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v3

    const-string v3, "lower_enlarge"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    const-string v3, "transparency"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    const-string v3, "light"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    const-string v3, "reflection"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    const-string v3, "contrast"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    const-string v3, "roughness"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    const-string v3, "finish_type"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    const-string v3, "texture_mode"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v13

    const-string v13, "color"

    move-object/from16 v27, v15

    invoke-interface {v1, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v3

    const-string v3, "tip_ratio_thumb"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    const-string v3, "tip_ratio_fore"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    const-string v3, "tip_ratio_middle"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    const-string v3, "tip_ratio_ring"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    const-string v3, "tip_ratio_little"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    const-string v3, "shimmer_opacity"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    const-string v3, "textured_granularity"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    const-string v3, "shimmer_granularity"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v15

    const-string v15, "position"

    move-object/from16 v37, v2

    invoke-interface {v1, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v38, v3

    const-string v3, "fullness"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    const-string v3, "wrinkless"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/r;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    move-object/from16 v41, v3

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    move-object/from16 v42, v14

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v43, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v44, v3

    const-string v3, "name"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->n(Lorg/w3c/dom/NodeList;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v3, "pattern_mask"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    move-object/from16 v46, v4

    const-string v4, "pattern_mask_real_3D"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v47, v4

    const-string v4, "tattoo_mask"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v48, v4

    const-string v4, "lipstick_profile"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v49, v4

    const-string v4, "colored_mask"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v50, v2

    invoke-interface {v1, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object/from16 v51, v4

    const-string v4, "palettes"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v52, v4

    const-string v4, "eyebrow_mode"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object/from16 v53, v4

    const-string v4, "eyebrow_mode_3d"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const-string v54, ""

    const/16 v55, 0x1

    move-object/from16 v56, v2

    move-object/from16 v58, v18

    move-object/from16 v59, v54

    move-object/from16 v60, v59

    move/from16 v57, v55

    const/4 v2, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move-object/from16 v61, v1

    const-string v1, "hair_warping_strength"

    move-object/from16 v62, v13

    const-string v13, "occluder_path"

    move-object/from16 v63, v14

    const-string v14, "obb_path"

    move-object/from16 v64, v5

    const-string v5, "src"

    move-object/from16 v65, v6

    const-string v6, "secondsrc"

    move-object/from16 v66, v7

    const-string v7, "eyewearwidth"

    move-object/from16 v67, v8

    const-string v8, "modelanchorrightbottom"

    move-object/from16 v68, v9

    const-string v9, "modelanchorrighttop"

    move-object/from16 v69, v10

    const-string v10, "modelanchorleftbottom"

    move-object/from16 v70, v11

    const-string v11, "modelanchorlefttop"

    move-object/from16 v71, v12

    const-string v12, "modelanchorright"

    move-object/from16 v72, v6

    const-string v6, "modelanchorleft"

    move-object/from16 v73, v7

    const-string v7, "browtail"

    move-object/from16 v74, v8

    const-string v8, "browtop"

    move-object/from16 v75, v9

    const-string v9, "browhead"

    move-object/from16 v76, v10

    const-string v10, "eyebottom"

    move-object/from16 v77, v11

    const-string v11, "eyeright"

    move-object/from16 v78, v6

    const-string v6, "eyetop"

    move-object/from16 v79, v12

    const-string v12, "eyeleft"

    move-object/from16 v80, v7

    const-string v7, "mask"

    if-ge v2, v4, :cond_5

    if-eqz v57, :cond_5

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move/from16 v81, v2

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v7, v2, :cond_4

    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    move-object/from16 v82, v3

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    move-object/from16 v84, v4

    const-string v4, "imagesrc"

    move-object/from16 v85, v5

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    move-object/from16 v87, v5

    const-string v5, "glpf_path"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v88

    if-eqz v88, :cond_0

    const-string v5, "obc_path"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v88

    if-eqz v88, :cond_1

    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object/from16 v88, v5

    invoke-interface {v2, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    invoke-static/range {v89 .. v89}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;->a()I

    move-result v89

    or-int v18, v18, v89

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v89

    if-nez v89, :cond_2

    invoke-static/range {v83 .. v83}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v89

    if-nez v89, :cond_2

    move-object/from16 v89, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v90, v7

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v91, v13

    const-string v13, "/inplace"

    invoke-virtual {v7, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    goto :goto_2

    :cond_2
    move-object/from16 v89, v5

    move/from16 v90, v7

    move-object/from16 v91, v13

    :goto_2
    invoke-static/range {v87 .. v87}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {v86 .. v86}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v57, 0x0

    :goto_3
    move-object/from16 v98, v19

    move-object/from16 v99, v20

    move-object/from16 v100, v21

    move-object/from16 v101, v22

    move-object/from16 v102, v23

    move-object/from16 v103, v24

    move-object/from16 v104, v25

    move-object/from16 v105, v28

    move-object/from16 v106, v29

    move-object/from16 v107, v30

    move-object/from16 v108, v31

    move-object/from16 v109, v32

    move-object/from16 v110, v33

    move-object/from16 v111, v34

    move-object/from16 v112, v35

    move-object/from16 v113, v38

    move-object/from16 v114, v39

    move-object/from16 v115, v41

    move-object/from16 v2, v44

    move-object/from16 v4, v46

    move-object/from16 v92, v64

    move-object/from16 v123, v65

    move-object/from16 v93, v66

    move-object/from16 v94, v67

    move-object/from16 v95, v68

    move-object/from16 v96, v70

    move-object/from16 v97, v71

    move-object/from16 v20, v15

    goto/16 :goto_4

    :cond_3
    const-string v3, "defaultcolor"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    const-string v3, "defaultcolorguid"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v15, v5, v15, v12}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v6, v5, v6, v11}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "eyeshadowside"

    invoke-static {v2, v10, v5, v10, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "shapesrc"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v5, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v9, v5, v9, v8}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "basicbrowhead"

    move-object/from16 v13, v80

    move/from16 v80, v3

    invoke-static {v2, v13, v5, v13, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "basicbrowtop"

    const-string v7, "basicbrowtail"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "basiceyehead"

    const-string v7, "basiceyetop"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "basiceyetail"

    const-string v7, "shapesrc3d"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "browhead3d"

    const-string v7, "browtop3d"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "browtail3d"

    const-string v7, "browcurvature"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "browthickness"

    const-string v7, "browpositionx"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "browpositiony"

    const-string v7, "browdefinition"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "oversizedratio"

    const-string v7, "upperhead3d"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uppermiddle3d"

    const-string v7, "uppertail3d"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lowerhead3d"

    const-string v7, "lowermiddle3d"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lowertail3d"

    const-string v7, "feathersrc3d"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "browgoldenratio"

    const-string v7, "browmatchthickness"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "browheadlocation"

    const-string v7, "browtaillocation"

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {v86 .. v86}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v4, v78

    move-object/from16 v3, v79

    invoke-static {v2, v4, v5, v4, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v7, v76

    move-object/from16 v3, v77

    invoke-static {v2, v3, v5, v3, v7}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v4, v74

    move-object/from16 v3, v75

    move-object/from16 v74, v6

    invoke-static {v2, v3, v5, v3, v4}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v6, v72

    move-object/from16 v3, v73

    move-object/from16 v72, v4

    invoke-static {v2, v3, v5, v3, v6}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "left_obb_path"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "left_obc_path"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "left_glpf_path"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "right_obb_path"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "right_obc_path"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "right_obc_path"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "right_glpf_path"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "right_glpf_path"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "modelanchorrighteye"

    const-string v4, "modelanchorlefteye"

    move-object/from16 v76, v6

    const-string v6, "modelanchorlefteye"

    invoke-static {v2, v4, v5, v6, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "modelanchorrighteye"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "modelanchorrightface"

    const-string v4, "modelanchorleftface"

    const-string v6, "modelanchorleftface"

    invoke-static {v2, v4, v5, v6, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "modelanchorrightface"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "object_distance_ratio"

    const-string v4, "wigshadowstrength"

    const-string v6, "wigshadowstrength"

    invoke-static {v2, v4, v5, v6, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "object_distance_ratio"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "object_distance_ratio_back"

    const-string v4, "is_rigid_body"

    const-string v6, "is_rigid_body"

    invoke-static {v2, v4, v5, v6, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "object_distance_ratio_back"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "adaptive_rotate"

    const-string v4, "object_distance_ratio_palm"

    const-string v6, "object_distance_ratio_palm"

    invoke-static {v2, v4, v5, v6, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adaptive_rotate"

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/c;

    add-int/lit8 v86, v90, 0x1

    invoke-static/range {v86 .. v86}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v83 .. v83}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v4, v8

    invoke-static/range {v54 .. v54}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {v88 .. v88}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v83

    invoke-static/range {v89 .. v89}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v87

    move-object/from16 v88, v9

    const-string v9, ""

    move-object/from16 v119, v7

    move-object/from16 v98, v19

    move-object/from16 v99, v20

    move-object/from16 v100, v21

    move-object/from16 v101, v22

    move-object/from16 v102, v23

    move-object/from16 v103, v24

    move-object/from16 v104, v25

    move-object/from16 v105, v28

    move-object/from16 v106, v29

    move-object/from16 v107, v30

    move-object/from16 v108, v31

    move-object/from16 v109, v32

    move-object/from16 v110, v33

    move-object/from16 v111, v34

    move-object/from16 v112, v35

    move-object/from16 v113, v38

    move-object/from16 v114, v39

    move-object/from16 v115, v41

    move-object/from16 v92, v64

    move-object/from16 v123, v65

    move-object/from16 v93, v66

    move-object/from16 v94, v67

    move-object/from16 v95, v68

    move-object/from16 v96, v70

    move-object/from16 v97, v71

    move-object/from16 v117, v72

    move-object/from16 v116, v73

    move-object/from16 v118, v75

    move-object/from16 v72, v76

    move-object/from16 v120, v77

    move-object/from16 v122, v78

    move-object/from16 v121, v79

    move-object/from16 v19, v1

    move-object v7, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v20, v15

    move-object/from16 v2, v44

    move-object/from16 v4, v46

    move-object/from16 v1, v74

    move-object/from16 v10, v83

    move-object/from16 v11, v87

    move-object v15, v12

    move/from16 v12, v80

    move-object/from16 v80, v13

    move-object/from16 v13, v85

    invoke-direct/range {v3 .. v12}, Lcom/perfectcorp/perfectlib/ph/template/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    move-object v5, v13

    move-object v12, v15

    move-object/from16 v1, v19

    move-object/from16 v15, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v3, v82

    move-object/from16 v4, v84

    move/from16 v7, v86

    move-object/from16 v9, v88

    move-object/from16 v13, v91

    move-object/from16 v19, v98

    move-object/from16 v20, v99

    move-object/from16 v21, v100

    move-object/from16 v22, v101

    move-object/from16 v23, v102

    move-object/from16 v74, v117

    move-object/from16 v76, v119

    goto/16 :goto_1

    :cond_4
    move-object/from16 v82, v3

    goto/16 :goto_3

    :goto_4
    add-int/lit8 v1, v81, 0x1

    move-object/from16 v44, v2

    move-object/from16 v46, v4

    move-object/from16 v15, v20

    move-object/from16 v13, v62

    move-object/from16 v14, v63

    move-object/from16 v10, v69

    move-object/from16 v3, v82

    move-object/from16 v5, v92

    move-object/from16 v7, v93

    move-object/from16 v8, v94

    move-object/from16 v9, v95

    move-object/from16 v11, v96

    move-object/from16 v12, v97

    move-object/from16 v19, v98

    move-object/from16 v20, v99

    move-object/from16 v21, v100

    move-object/from16 v22, v101

    move-object/from16 v23, v102

    move-object/from16 v24, v103

    move-object/from16 v25, v104

    move-object/from16 v28, v105

    move-object/from16 v29, v106

    move-object/from16 v30, v107

    move-object/from16 v31, v108

    move-object/from16 v32, v109

    move-object/from16 v33, v110

    move-object/from16 v34, v111

    move-object/from16 v35, v112

    move-object/from16 v38, v113

    move-object/from16 v39, v114

    move-object/from16 v41, v115

    move-object/from16 v6, v123

    move v2, v1

    move-object/from16 v1, v61

    goto/16 :goto_0

    :cond_5
    move-object/from16 v88, v9

    move-object/from16 v91, v13

    move-object/from16 v98, v19

    move-object/from16 v99, v20

    move-object/from16 v100, v21

    move-object/from16 v101, v22

    move-object/from16 v102, v23

    move-object/from16 v103, v24

    move-object/from16 v104, v25

    move-object/from16 v105, v28

    move-object/from16 v106, v29

    move-object/from16 v107, v30

    move-object/from16 v108, v31

    move-object/from16 v109, v32

    move-object/from16 v110, v33

    move-object/from16 v111, v34

    move-object/from16 v112, v35

    move-object/from16 v113, v38

    move-object/from16 v114, v39

    move-object/from16 v115, v41

    move-object/from16 v2, v44

    move-object/from16 v4, v46

    move-object/from16 v92, v64

    move-object/from16 v123, v65

    move-object/from16 v93, v66

    move-object/from16 v94, v67

    move-object/from16 v95, v68

    move-object/from16 v96, v70

    move-object/from16 v97, v71

    move-object/from16 v116, v73

    move-object/from16 v117, v74

    move-object/from16 v118, v75

    move-object/from16 v119, v76

    move-object/from16 v120, v77

    move-object/from16 v122, v78

    move-object/from16 v121, v79

    move-object/from16 v19, v1

    move-object v13, v5

    move-object v1, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v20, v15

    move-object v15, v12

    const/4 v3, 0x0

    :goto_5
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_9

    if-eqz v57, :cond_9

    move-object/from16 v5, v47

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v8, 0x0

    :goto_6
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v91

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 v24, v3

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object/from16 v46, v4

    move-object/from16 v47, v5

    const/4 v4, 0x0

    :goto_7
    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v9, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move/from16 v25, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v25, 0x1

    goto :goto_7

    :cond_7
    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v7

    move-object v7, v3

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/c;

    add-int/lit8 v25, v8, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v6

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v9, v8

    invoke-static/range {v54 .. v54}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v91, v11

    move-object v11, v12

    const/4 v12, -0x1

    move-object/from16 v28, v9

    const-string v9, ""

    move-object/from16 v29, v14

    move-object v14, v4

    move-object/from16 v4, v46

    invoke-direct/range {v3 .. v12}, Lcom/perfectcorp/perfectlib/ph/template/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v14

    move/from16 v3, v24

    move/from16 v8, v25

    move-object/from16 v6, v28

    move-object/from16 v14, v29

    move-object/from16 v5, v47

    goto/16 :goto_6

    :cond_8
    move/from16 v24, v3

    move-object/from16 v47, v5

    move-object/from16 v29, v14

    move-object v14, v7

    add-int/lit8 v3, v24, 0x1

    move-object/from16 v14, v29

    goto/16 :goto_5

    :cond_9
    move-object v14, v7

    const/4 v10, 0x0

    :goto_8
    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v10, v3, :cond_c

    if-eqz v57, :cond_c

    move-object/from16 v11, v48

    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v3, 0x0

    :goto_9
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-interface {v12, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v5, v15, v7, v15, v1}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v74, v1

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-static {v5, v9, v7, v9, v8}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move/from16 v22, v3

    move-object/from16 v1, v21

    move/from16 v21, v10

    move-object/from16 v10, v88

    invoke-static {v5, v10, v7, v10, v1}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "side"

    move-object/from16 v23, v1

    move-object/from16 v1, v80

    invoke-static {v5, v1, v7, v1, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "side"

    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "blend_mode"

    move-object/from16 v3, v20

    invoke-static {v5, v3, v7, v3, v1}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "blend_mode"

    invoke-virtual {v7, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "intensity"

    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "intensity"

    invoke-virtual {v7, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v22, v8

    move-object/from16 v24, v9

    const/16 v57, 0x0

    :goto_a
    move-object/from16 v3, v63

    goto :goto_b

    :cond_a
    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    add-int/lit8 v1, v22, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v22, v8

    const-string v8, ""

    move-object/from16 v24, v9

    const-string v9, ""

    invoke-direct/range {v3 .. v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    move-object/from16 v3, v63

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v88, v10

    move/from16 v10, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v24

    move v3, v1

    move-object/from16 v1, v74

    goto/16 :goto_9

    :cond_b
    move-object/from16 v74, v1

    move-object/from16 v24, v23

    move-object/from16 v23, v21

    move/from16 v21, v10

    move-object/from16 v10, v88

    goto :goto_a

    :goto_b
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v63, v3

    move-object/from16 v88, v10

    move-object/from16 v48, v11

    move-object/from16 v21, v23

    move-object/from16 v23, v24

    move v10, v1

    move-object/from16 v1, v74

    goto/16 :goto_8

    :cond_c
    move-object/from16 v3, v63

    const/4 v1, 0x0

    :goto_c
    invoke-interface/range {v51 .. v51}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/ph/template/r;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ge v1, v5, :cond_12

    if-eqz v57, :cond_12

    move-object/from16 v5, v51

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    :goto_d
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_11

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v72

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v20, v1

    move-object/from16 v12, v42

    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/perfectcorp/perfectlib/ph/template/r;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v1

    move-object/from16 v63, v3

    move-object/from16 v1, v19

    invoke-interface {v8, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v3

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_d

    :goto_e
    move-object/from16 v51, v5

    move-object/from16 v72, v10

    move-object/from16 v42, v12

    move-object/from16 v85, v13

    move-object/from16 v23, v14

    move-object/from16 v13, v50

    move-object/from16 v73, v116

    move-object/from16 v74, v117

    move-object/from16 v75, v118

    move-object/from16 v76, v119

    move-object/from16 v77, v120

    move-object/from16 v79, v121

    move-object/from16 v14, v122

    const/16 v57, 0x0

    goto/16 :goto_11

    :cond_d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_e

    goto :goto_e

    :cond_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move/from16 v24, v3

    move-object/from16 v85, v13

    move-object/from16 v23, v14

    move-object/from16 v13, v121

    move-object/from16 v14, v122

    invoke-static {v8, v14, v1, v14, v13}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v46, v4

    move-object/from16 v79, v13

    move-object/from16 v3, v119

    move-object/from16 v13, v120

    invoke-static {v8, v13, v1, v13, v3}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v76, v3

    move-object/from16 v77, v13

    move-object/from16 v4, v117

    move-object/from16 v13, v118

    invoke-static {v8, v13, v1, v13, v4}, Lz81;->g(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v74, v4

    move-object/from16 v3, v116

    invoke-interface {v8, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_f

    :cond_f
    move-object/from16 v21, v54

    :goto_f
    invoke-static/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v124

    move-object/from16 v4, v62

    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object/from16 v21, v1

    const/4 v11, 0x0

    :goto_10
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v11, v1, :cond_10

    invoke-interface {v8, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v125

    const/16 v138, 0x0

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v139

    const/16 v126, -0x1

    const/16 v127, 0x0

    const/16 v128, -0x1

    const/16 v129, -0x1

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, -0x1

    const/16 v134, -0x1

    const/16 v135, -0x1

    const/16 v136, -0x1

    const/16 v137, -0x1

    move-object/from16 v130, p1

    invoke-static/range {v124 .. v139}, Lcom/perfectcorp/perfectlib/ph/template/r;->c(Ljava/lang/String;Lorg/w3c/dom/Node;IZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-result-object v1

    move-object/from16 v73, v3

    move-object/from16 v75, v13

    move-object/from16 v13, v50

    iget-object v3, v13, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v73

    move-object/from16 v13, v75

    goto :goto_10

    :cond_10
    move-object/from16 v73, v3

    move-object/from16 v75, v13

    move-object/from16 v13, v50

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/c;

    add-int/lit8 v1, v7, 0x1

    move-object/from16 v51, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v72, v10

    invoke-static/range {v54 .. v54}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static/range {v54 .. v54}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v9, v21

    move-object/from16 v21, v6

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v62, v4

    move-object/from16 v42, v12

    move/from16 v12, v24

    move-object/from16 v4, v46

    move-object/from16 v9, v124

    invoke-direct/range {v3 .. v12}, Lcom/perfectcorp/perfectlib/ph/template/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v1

    move-object/from16 v122, v14

    move/from16 v1, v20

    move-object/from16 v6, v21

    move-object/from16 v14, v23

    move-object/from16 v5, v51

    move-object/from16 v3, v63

    move-object/from16 v116, v73

    move-object/from16 v117, v74

    move-object/from16 v118, v75

    move-object/from16 v119, v76

    move-object/from16 v120, v77

    move-object/from16 v121, v79

    move-object/from16 v13, v85

    goto/16 :goto_d

    :cond_11
    move/from16 v20, v1

    move-object/from16 v63, v3

    move-object/from16 v51, v5

    move-object/from16 v85, v13

    move-object/from16 v23, v14

    move-object/from16 v13, v50

    move-object/from16 v73, v116

    move-object/from16 v74, v117

    move-object/from16 v75, v118

    move-object/from16 v76, v119

    move-object/from16 v77, v120

    move-object/from16 v79, v121

    move-object/from16 v14, v122

    :goto_11
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v50, v13

    move-object/from16 v122, v14

    move-object/from16 v14, v23

    move-object/from16 v3, v63

    move-object/from16 v116, v73

    move-object/from16 v117, v74

    move-object/from16 v118, v75

    move-object/from16 v119, v76

    move-object/from16 v120, v77

    move-object/from16 v121, v79

    move-object/from16 v13, v85

    goto/16 :goto_c

    :cond_12
    move-object/from16 v63, v3

    move-object/from16 v13, v50

    move-object/from16 v12, v54

    const/4 v1, 0x0

    :goto_12
    invoke-interface/range {v49 .. v49}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_13

    move-object/from16 v3, v49

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    move-object/from16 v6, v123

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_13
    move-object/from16 v6, v123

    move-object/from16 v14, v54

    const/4 v1, 0x0

    :goto_13
    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_14

    move-object/from16 v3, v53

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_14
    move-object/from16 v3, v54

    const/4 v1, 0x0

    :goto_14
    invoke-interface/range {v61 .. v61}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_15

    move-object/from16 v5, v61

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v43

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_15
    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_17

    move-object/from16 v6, v56

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    move-object/from16 v8, v37

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v10, v3

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    move-object/from16 v56, v6

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    move-object v11, v10

    const-string v10, ""

    move-object/from16 v19, v11

    sget-object v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-object/from16 v43, v5

    move-object v5, v7

    const/4 v7, 0x1

    move-object/from16 v37, v8

    const/4 v8, 0x0

    move-object/from16 v20, v9

    const-string v9, ""

    move/from16 v21, v1

    move-object/from16 v44, v2

    move-object/from16 v50, v13

    move-object/from16 v2, v19

    move-object/from16 v13, v20

    move-object/from16 v1, v43

    invoke-direct/range {v3 .. v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_16
    move/from16 v21, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object v1, v5

    move-object/from16 v56, v6

    move-object/from16 v37, v8

    move-object/from16 v50, v13

    :goto_16
    add-int/lit8 v3, v21, 0x1

    move-object v5, v1

    move v1, v3

    move-object/from16 v13, v50

    move-object v3, v2

    move-object/from16 v2, v44

    goto :goto_15

    :cond_17
    move-object/from16 v44, v2

    move-object v2, v3

    move-object v1, v5

    move-object/from16 v50, v13

    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1a

    move-object/from16 v3, v52

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v5, "palette_guid"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_1a

    invoke-interface {v13, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "color_intensities"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/String;

    goto :goto_18

    :cond_18
    const/4 v7, 0x0

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :goto_18
    if-eqz v9, :cond_19

    array-length v9, v9

    move/from16 v140, v9

    move v9, v7

    move/from16 v7, v140

    goto :goto_19

    :cond_19
    move v9, v7

    :goto_19
    const-string v10, "radius"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move v11, v3

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    move/from16 v19, v9

    move-object v9, v5

    move-object v5, v6

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v10

    const-string v10, ""

    move/from16 v21, v11

    sget-object v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-object/from16 v43, v1

    move-object/from16 v1, v20

    invoke-direct/range {v3 .. v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v1, v43

    goto :goto_17

    :cond_1a
    const/16 v19, 0x0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;-><init>()V

    iput-object v12, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->a:Ljava/lang/String;

    iput-object v14, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->c:Ljava/lang/String;

    move-object/from16 v2, v58

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->e:Ljava/lang/String;

    move-object/from16 v2, v93

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->i:Ljava/lang/String;

    move-object/from16 v2, v94

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->g:Ljava/lang/String;

    move-object/from16 v2, v95

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->h:Ljava/lang/String;

    move-object/from16 v2, v92

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->f:Ljava/lang/String;

    move-object/from16 v2, v96

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->j:Ljava/lang/String;

    move-object/from16 v2, v97

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->k:Ljava/lang/String;

    move-object/from16 v2, v98

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->l:Ljava/lang/String;

    move-object/from16 v2, v99

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->m:Ljava/lang/String;

    move-object/from16 v2, v100

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->n:Ljava/lang/String;

    move-object/from16 v2, v101

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->o:Ljava/lang/String;

    move-object/from16 v2, v102

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->p:Ljava/lang/String;

    move-object/from16 v2, v103

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->q:Ljava/lang/String;

    move-object/from16 v2, v104

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->r:Ljava/lang/String;

    move-object/from16 v2, v105

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->s:Ljava/lang/String;

    move-object/from16 v2, v36

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->t:Ljava/lang/String;

    move-object/from16 v2, v106

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->u:Ljava/lang/String;

    move-object/from16 v2, v107

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->v:Ljava/lang/String;

    move-object/from16 v2, v108

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->w:Ljava/lang/String;

    move-object/from16 v2, v109

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->x:Ljava/lang/String;

    move-object/from16 v2, v110

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->y:Ljava/lang/String;

    move-object/from16 v2, v111

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->z:Ljava/lang/String;

    move-object/from16 v2, v112

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->A:Ljava/lang/String;

    move-object/from16 v2, v113

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->B:Ljava/lang/String;

    move-object/from16 v2, v40

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->C:Ljava/lang/String;

    move-object/from16 v2, v114

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->D:Ljava/lang/String;

    move-object/from16 v2, v115

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m$b$a;->E:Ljava/lang/String;

    new-instance v13, Lcom/perfectcorp/perfectlib/ph/template/m$b;

    invoke-direct {v13, v1}, Lcom/perfectcorp/perfectlib/ph/template/m$b;-><init>(Lcom/perfectcorp/perfectlib/ph/template/m$b$a;)V

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/m;

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/r;->d:Ljava/lang/String;

    move-object/from16 v2, v27

    invoke-static {v0, v2, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_1b
    const-string v0, "-_-"

    :goto_1a
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v15, v0, :cond_1c

    move/from16 v11, v55

    goto :goto_1b

    :cond_1c
    move/from16 v11, v19

    :goto_1b
    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static/range {v59 .. v59}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_1c

    :cond_1d
    move-object/from16 v14, v54

    :goto_1c
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_1d

    :cond_1e
    move-object/from16 v16, v54

    :goto_1d
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    move-object/from16 v5, p1

    move/from16 v10, p3

    move-object/from16 v9, v26

    move-object/from16 v6, v45

    move-object/from16 v0, v50

    move-object/from16 v15, v60

    move-object/from16 v12, v69

    goto :goto_1f

    :cond_1f
    move-object/from16 v17, v54

    goto :goto_1e

    :goto_1f
    invoke-direct/range {v3 .. v18}, Lcom/perfectcorp/perfectlib/ph/template/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/m$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/template/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/template/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_20

    :cond_20
    move/from16 v55, v19

    :cond_21
    :goto_20
    and-int v1, v57, v55

    if-eqz v1, :cond_24

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/c;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_22
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_23
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/r;->d:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
