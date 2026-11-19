.class final Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionCache"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;

.field public b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

.field public c:[Z


# direct methods
.method public static a(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    iget-boolean v2, v1, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v5, "cheekbones"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "[FP16]cheekbone_1210_1_output_graph[tf112].mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[FP16]eyelid_20220718[tf112].mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "eyebrow_st_net_v1-20191121-1574330695_fp16.mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v5, "faceShape"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "[FP16]1568105590.mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "[FP16]1568623014.mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "[FP16]output_graph_tf112.mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "20220517_fp16.mnn"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v4, "hairColor"

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "haitone_init_net_241213_cross1.mnn"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "seg_init_net_20200814_android.mnn"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->d()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "ageGender_model_fp16.mnn"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean p0, v1, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    invoke-direct {v4, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    goto :goto_2

    :cond_8
    return-object v2
.end method
