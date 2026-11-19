.class public final synthetic Lcom/perfectcorp/perfectlib/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/z;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/z;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/z;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/z;->c:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/z;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->i:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;

    new-instance v4, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;

    invoke-direct {v4, v0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a()[Z

    move-result-object v14

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->c:[Z

    invoke-static {v14, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    const-wide/16 v16, 0x0

    const/4 v6, 0x2

    const-string v7, "PFMNN"

    const/16 v18, 0x0

    const-string v9, "FaceAttributeAnalyzer$PredictionCache"

    const/4 v10, 0x3

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)Ljava/lang/String;

    move-result-object v0

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;

    iget-object v11, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v13, v12

    shl-int/lit8 v12, v13, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "faceshape"

    invoke-static {v13, v5}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v7

    new-instance v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "libfaceshape.so"

    invoke-virtual {v13, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v13, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->g:Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    move-object v11, v5

    move/from16 v20, v10

    move v10, v6

    iget-wide v5, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->a:J

    if-nez v13, :cond_0

    move-object/from16 v24, v11

    move-object v8, v12

    move-wide/from16 v11, v16

    :goto_0
    move-object/from16 v25, v0

    const/4 v0, -0x1

    const/16 v21, 0x1

    goto :goto_1

    :cond_0
    move/from16 v22, v9

    iget-wide v8, v13, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J

    move-object/from16 v24, v11

    move-wide/from16 v35, v8

    move-object v8, v12

    move-wide/from16 v11, v35

    move/from16 v9, v22

    goto :goto_0

    :goto_1
    invoke-static/range {v5 .. v15}, Lcom/perfectcorp/perfectlib/jniproxy/UIFaceAttributeJNI;->CUIFaceAttribute_predictImage(JLcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;Ljava/lang/Object;IIJLcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;[ZLjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/jniproxy/CUIFaceAttribute;->a()V

    move/from16 v5, v18

    :goto_2
    const/16 v6, 0xb

    if-ge v5, v6, :cond_3

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->c:[Z

    aget-boolean v7, v6, v5

    if-nez v7, :cond_2

    aget-boolean v7, v14, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    move/from16 v8, v18

    goto :goto_4

    :cond_2
    :goto_3
    move/from16 v8, v21

    :goto_4
    aput-boolean v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->d()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->ageGender:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

    iput v0, v5, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;->age:I

    iput-object v3, v5, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;->gender:Ljava/lang/String;

    :cond_4
    move-object/from16 v6, v25

    const/4 v7, 0x3

    goto :goto_5

    :cond_5
    move-object/from16 v24, v7

    move-object/from16 v25, v9

    const/4 v0, -0x1

    const/16 v21, 0x1

    const-string v5, "No need to run face attribute detection."

    move-object/from16 v6, v25

    const/4 v7, 0x3

    invoke-static {v7, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v8, "skinTone"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "venus_tracking"

    if-eqz v5, :cond_a

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->a:Ljava/lang/Integer;

    if-nez v5, :cond_a

    const-string v5, "Need to run skin tone detection."

    invoke-static {v7, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v11, v24

    invoke-static {v9, v11}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v9, v8}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v10, "venus_shadefinder"

    invoke-static {v9, v10}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "libvenus_shadefinder.so"

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_LV_SHADE_DETECT:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    goto :goto_6

    :cond_6
    sget-object v10, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION_V4_FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    :goto_6
    invoke-static {v9, v10}, Lcom/perfectcorp/perfectlib/ShadeFinder;->initShadeFinder(Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;)V

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->c:Ljava/lang/String;

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    iget-boolean v13, v1, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/makeupcam/utility/CameraUtils$PictureTaken;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v27

    iget-wide v14, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v14, v15, v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_ResetShadeFinder(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;)Z

    move-result v14

    const-string v15, "ResetShadeFinder failed."

    invoke-static {v15, v14}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    new-instance v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    invoke-direct {v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    sub-long v24, v24, v19

    const-wide v28, 0x37e11d600L

    cmp-long v15, v24, v28

    if-gez v15, :cond_9

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    const/16 v32, 0x0

    move/from16 p0, v0

    move-object v15, v1

    iget-wide v0, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v24, v0

    move-object/from16 v26, v9

    invoke-static/range {v24 .. v32}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[BIIIZZ)Z

    move-object v1, v3

    move-object v9, v4

    move-object/from16 v0, v26

    iget-wide v3, v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static {v3, v4, v0, v14, v13}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetShadeFinderData__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/Object;Z)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v22, v1

    const-string v1, "GetShadeFinderData failed. detectionMode="

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget v1, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_id:I

    if-eqz v13, :cond_7

    move/from16 v3, v21

    goto :goto_8

    :cond_7
    const/4 v3, 0x5

    :goto_8
    if-lt v1, v3, :cond_8

    iget v1, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_r:I

    iget v3, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_g:I

    iget v4, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_b:I

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->a:Ljava/lang/Integer;

    goto :goto_9

    :cond_8
    const-wide/16 v3, 0x42

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v4, v9

    move-object v1, v15

    move-object/from16 v3, v22

    move-object v9, v0

    move/from16 v0, p0

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Can\'t detect skin tone"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 p0, v0

    move-object v15, v1

    move-object/from16 v22, v3

    move-object v9, v4

    move-object/from16 v11, v24

    const-string v0, "No need to run skin tone detection."

    invoke-static {v7, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v0, v9, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v1, "eyebrowColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "SwapColorChannel() failed."

    const-string v1, ")"

    const-string v4, "FaceAttributeAnalyzer"

    const-string v5, ","

    if-eqz v0, :cond_e

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->b:Ljava/lang/Integer;

    if-nez v0, :cond_e

    const-string v0, "Need to run eyebrow color detection."

    invoke-static {v7, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)Ljava/lang/String;

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v10, v8}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v12, "venus_eyebrowcolor"

    invoke-static {v10, v12}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/perfectcorp/perfectlib/jniproxy/CUIEyebrowColor;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "libvenus_eyebrowcolor.so"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/perfectcorp/perfectlib/jniproxy/CUIEyebrowColor;-><init>(Ljava/lang/String;)V

    new-array v12, v7, [I

    iget-object v13, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/core/ImageBufferBridge;->a(Landroid/graphics/Bitmap;)Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;

    move-result-object v13

    :try_start_1
    iget-object v14, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->g:Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    iget-boolean v7, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    move/from16 v34, v7

    move-object/from16 v19, v8

    iget-wide v7, v10, Lcom/perfectcorp/perfectlib/jniproxy/CUIEyebrowColor;->a:J

    move-wide/from16 v24, v7

    iget-wide v7, v13, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    if-nez v14, :cond_b

    move-wide/from16 v27, v7

    move-wide/from16 v30, v16

    :goto_a
    move-object/from16 v26, v10

    move-object/from16 v33, v12

    move-object/from16 v29, v13

    move-object/from16 v32, v14

    goto :goto_b

    :cond_b
    move-wide/from16 v27, v7

    iget-wide v7, v14, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v30, v7

    goto :goto_a

    :goto_b
    :try_start_2
    invoke-static/range {v24 .. v34}, Lcom/perfectcorp/perfectlib/jniproxy/UIEyebrowColorJNI;->CUIEyebrowColor_GetEyebrowColor(JLcom/perfectcorp/perfectlib/jniproxy/CUIEyebrowColor;JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;JLcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;[IZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, v29

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "detectedEyebrowColor=("

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v10, v33, v18

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v33, v21

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    aget v12, v33, v10

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    invoke-static {v12, v4, v8}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-wide v12, v7, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v12, v13, v7}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_SwapColorChannel__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-wide v12, v7, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v12, v13, v7}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_DetachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a()V

    invoke-virtual/range {v26 .. v26}, Lcom/perfectcorp/perfectlib/jniproxy/CUIEyebrowColor;->a()V

    aget v7, v33, v18

    aget v8, v33, v21

    aget v12, v33, v10

    invoke-static {v7, v8, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->b:Ljava/lang/Integer;

    const/4 v7, 0x3

    goto :goto_d

    :cond_c
    invoke-static {v3}, Lmd;->k(Ljava/lang/String;)V

    return-object v22

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v7, v29

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v7, v13

    :goto_c
    iget-wide v1, v7, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v1, v2, v7}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_SwapColorChannel__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v3}, Lmd;->k(Ljava/lang/String;)V

    return-object v22

    :cond_d
    iget-wide v1, v7, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v1, v2, v7}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_DetachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a()V

    throw v0

    :cond_e
    move-object/from16 v19, v8

    const/4 v10, 0x2

    const-string v0, "No need to run eyebrow color detection."

    const/4 v7, 0x3

    invoke-static {v7, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object v0, v9, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v8, "hairColor"

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->c:Ljava/lang/Integer;

    if-nez v0, :cond_18

    const-string v0, "Need to run hair color detection."

    invoke-static {v7, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    invoke-static {v0, v11}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v7, v19

    invoke-static {v0, v7}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v7, "venus_hairtone"

    invoke-static {v0, v7}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "libvenus_hairtone.so"

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;-><init>(Ljava/lang/String;)V

    :try_start_4
    new-array v8, v10, [Ljava/lang/String;

    iget-object v11, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->h:Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

    iget-wide v12, v11, Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;->a:J

    invoke-static {v12, v13, v11}, Lcom/perfectcorp/perfectlib/jniproxy/UITrackingJNI;->CUITracking_GetVenusTrackingLive(JLcom/perfectcorp/perfectlib/jniproxy/CUITracking;)J

    move-result-wide v11

    cmp-long v13, v11, v16

    if-nez v13, :cond_f

    move-object/from16 v13, v22

    goto :goto_e

    :cond_f
    new-instance v13, Lcom/perfectcorp/perfectlib/jniproxy/SWIGTYPE_p_IVenusTrackingLive;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-wide v11, v13, Lcom/perfectcorp/perfectlib/jniproxy/SWIGTYPE_p_IVenusTrackingLive;->a:J

    :goto_e
    iget-wide v11, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;->a:J

    if-nez v13, :cond_10

    move-wide/from16 v13, v16

    goto :goto_f

    :cond_10
    iget-wide v13, v13, Lcom/perfectcorp/perfectlib/jniproxy/SWIGTYPE_p_IVenusTrackingLive;->a:J

    :goto_f
    invoke-static {v11, v12, v7, v13, v14}, Lcom/perfectcorp/perfectlib/jniproxy/UIHairToneJNI;->CUIHairTone_SetTrackingEngine(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;J)Z

    move-result v11

    invoke-static {v11}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    iget-wide v11, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;->a:J

    invoke-static {v11, v12, v7, v8}, Lcom/perfectcorp/perfectlib/jniproxy/UIHairToneJNI;->CUIHairTone_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;[Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "internal model versions="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v12, v4, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, v6, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v12, v6, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v11, :cond_11

    :try_start_5
    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v13, "seg_init_net_"

    const-string v14, "_android.mnn"

    move/from16 v19, v10

    aget-object v10, v8, v18

    invoke-direct {v11, v13, v14, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v12, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v10

    goto :goto_10

    :catchall_3
    move-exception v0

    goto/16 :goto_18

    :cond_11
    move/from16 v19, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v11, v8, v18

    invoke-direct {v10, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v10

    :goto_10
    iget-boolean v11, v6, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v11, :cond_12

    :try_start_6
    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v12, "haitone_init_net_"

    const-string v13, "_cross1.mnn"

    aget-object v8, v8, v21

    invoke-direct {v11, v12, v13, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->d(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_12
    new-instance v0, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v8, v8, v21

    invoke-direct {v0, v8}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    iget-wide v13, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;->a:J

    invoke-static {v13, v14, v7, v10, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIHairToneJNI;->CUIHairTone_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "SetInternalModelPaths in "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/32 v10, 0xf4240

    div-long/2addr v13, v10

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    invoke-static {v12, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    new-array v0, v12, [I

    move/from16 v6, v21

    new-array v8, v6, [Ljava/lang/String;

    iget-object v6, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->f:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/core/ImageBufferBridge;->a(Landroid/graphics/Bitmap;)Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;

    move-result-object v6

    :try_start_7
    iget-object v10, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->g:Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

    iget-boolean v11, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    iget-wide v12, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;->a:J

    move-object/from16 v25, v7

    move-object/from16 v33, v8

    iget-wide v7, v6, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v10, :cond_13

    move-object/from16 v28, v6

    move-wide/from16 v26, v7

    move-wide/from16 v29, v16

    :goto_12
    move-object/from16 v32, v0

    move-object/from16 v31, v10

    move/from16 v34, v11

    move-wide/from16 v23, v12

    goto :goto_13

    :cond_13
    move-object/from16 v28, v6

    move-wide/from16 v26, v7

    :try_start_8
    iget-wide v6, v10, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;->a:J

    move-wide/from16 v29, v6

    goto :goto_12

    :goto_13
    invoke-static/range {v23 .. v34}, Lcom/perfectcorp/perfectlib/jniproxy/UIHairToneJNI;->CUIHairTone_GetHairTone(JLcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;JLcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;[I[Ljava/lang/Object;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v6, v28

    :try_start_9
    aget-object v0, v33, v18

    if-nez v0, :cond_14

    const-string v0, "detectedHairColor=(-1)"

    const/4 v12, 0x3

    :goto_14
    invoke-static {v12, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catchall_4
    move-exception v0

    goto/16 :goto_17

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "detectedHairColor=("

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v32, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x1

    aget v7, v32, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v32, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    goto :goto_14

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "detectedHairColorName=("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v33, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    invoke-static {v12, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-wide v0, v6, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v0, v1, v6}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_SwapColorChannel__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-wide v0, v6, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v0, v1, v6}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_DetachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a()V

    invoke-virtual/range {v25 .. v25}, Lcom/perfectcorp/perfectlib/jniproxy/CUIHairTone;->a()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aget-object v1, v33, v18

    if-nez v1, :cond_15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_15
    aget v3, v32, v18

    const/16 v21, 0x1

    aget v4, v32, v21

    aget v5, v32, v19

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->d:Ljava/lang/String;

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->c:Ljava/lang/Integer;

    goto :goto_19

    :cond_16
    invoke-static {v3}, Lmd;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :catchall_5
    move-exception v0

    move-object/from16 v6, v28

    :goto_17
    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v4, v5, v6}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_SwapColorChannel__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v3}, Lmd;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_17
    iget-wide v1, v6, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v1, v2, v6}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_DetachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a()V

    throw v0

    :goto_18
    const-string v1, "Module load failed"

    invoke-static {v4, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    const-string v0, "No need to run hair color detection."

    const/4 v12, 0x3

    invoke-static {v12, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_19
    new-instance v0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->a:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;->b:Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;

    iget-boolean v3, v15, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/perfectcorp/perfectlib/FaceAnalysisData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;Z)V

    return-object v0

    :cond_19
    const-string v0, "Doesn\'t set an image."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1a
    move-object v1, v3

    const-string v0, "Contains unsupported features."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1
.end method

.method private final b()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/z;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/z;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "RECOMMENDATION_SETTING"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "RECOMMENDATION_JS"

    invoke-virtual {v1, v4, v3}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->b(Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "RECOMMENDATION_EXTRA_INFO"

    invoke-virtual {v1, v5, v3}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ");"

    const-string v6, "recommend("

    const-string v7, ", "

    if-eqz v3, :cond_0

    invoke-static {v6, v2, v7, v0, v7}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v5, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v6, v2, v7, v0, v7}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p0, v7, v1, v5}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, ";\n"

    invoke-static {v4, v0, p0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/NoSurveySettingException;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/exceptions/NoSurveySettingException;-><init>()V

    throw p0
.end method

.method private final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/z;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/TagType;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/z;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/TagType;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/z;->b:I

    const/4 v2, 0x7

    const-string v3, "ContentPreloader"

    const-string v4, "LOOK_LIST_MESSAGE_DIGEST"

    const/16 v5, 0x9

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x3

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/z;->d:Ljava/lang/Object;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/z;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v12, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast v11, Lcom/perfectcorp/perfectlib/TagHandler$Type;

    new-instance v0, Lpx0;

    invoke-direct {v0, v12, v5}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    if-ne v11, v0, :cond_0

    const-string v0, "ProductMaskHelper"

    const-string v1, "[syncServer] start"

    invoke-static {v10, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ProductMaskHelper;->b(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/z;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v12, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast v11, Ljava/util/List;

    new-instance v0, Lpx0;

    invoke-direct {v0, v12, v9}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v12, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v11, Ljava/util/List;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    const-string v0, "SkinCare3RecommendationHandler"

    const-string v1, "[downloadProducts] start"

    invoke-static {v10, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v11}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->a(ILjava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/z;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v11, Ljava/util/List;

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    iget-object v1, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v2, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v1, v2, v11}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/Iterable;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v0, v1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object v0

    return-object v0

    :pswitch_5
    check-cast v12, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-static {v12, v11}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->c(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v12, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    check-cast v11, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-boolean v0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_3

    :cond_1
    iget-object v0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->i:[Z

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->k:[Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v15, v11, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v0, v11, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v4, v11, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iget-wide v12, v14, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v0

    move/from16 v17, v4

    invoke-static/range {v12 .. v19}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_AnalyzeFrameYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZ)Z

    move-result v0

    const-string v4, "Analyze face failed"

    invoke-static {v4, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget-wide v4, v14, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v4, v5, v14, v3, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFaceRectangle(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "No face detected."

    if-eqz v0, :cond_6

    :try_start_1
    iget v0, v11, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v5, v11, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    invoke-virtual {v1, v0, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->G:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->H:[Ljava/util/List;

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_1
    array-length v5, v2

    if-ge v8, v5, :cond_4

    aget-boolean v5, v2, v8

    if-eqz v5, :cond_3

    new-instance v5, Lcom/perfectcorp/perfectlib/FaceData;

    new-instance v6, Landroid/graphics/Rect;

    aget-object v7, v3, v8

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aget-object v7, v0, v8

    aget-object v9, v1, v8

    if-eqz v7, :cond_2

    iget-boolean v10, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    new-instance v10, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;

    invoke-direct {v10, v7, v9}, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    sget-object v10, Lcom/perfectcorp/perfectlib/FaceAlignmentData;->a:Lcom/perfectcorp/perfectlib/FaceAlignmentData;

    :goto_2
    invoke-direct {v5, v6, v10, v8}, Lcom/perfectcorp/perfectlib/FaceData;-><init>(Landroid/graphics/Rect;Lcom/perfectcorp/perfectlib/FaceAlignmentData;I)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_3
    return-object v0

    :cond_5
    :try_start_2
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;

    invoke-direct {v0, v4}, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;

    invoke-direct {v0, v4}, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :pswitch_7
    check-cast v12, Lcom/perfectcorp/perfectlib/NailLookHandler;

    check-cast v11, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v4, v7}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Llc0;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Llc0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v2

    :pswitch_8
    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectEffect;->values()[Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v1

    array-length v2, v1

    move v3, v8

    move v4, v3

    :goto_4
    if-ge v3, v2, :cond_14

    aget-object v5, v1, v3

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v12, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v7, v13, :cond_7

    if-nez v4, :cond_13

    :cond_7
    if-ne v7, v13, :cond_8

    invoke-static {v12, v5, v7}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->v(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/EffectId;

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    sget-object v13, Lcom/perfectcorp/perfectlib/MakeupCamInternal$3;->b:[I

    iget-object v14, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v9, :cond_b

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    if-eq v13, v10, :cond_13

    iget-object v13, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v12, v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v13

    goto :goto_8

    :cond_9
    invoke-static {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v13

    if-nez v13, :cond_a

    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_a
    iget-object v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_7
    invoke-static {v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Ljava/util/List;

    move-result-object v13

    goto :goto_8

    :cond_b
    invoke-static {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v13

    if-nez v13, :cond_c

    goto :goto_6

    :cond_c
    iget-object v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    goto :goto_7

    :goto_8
    invoke-static {v13}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v14, [I

    move v9, v8

    :goto_9
    if-ge v9, v14, :cond_10

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v6, v15, v9

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v10, :cond_f

    iget-object v10, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v10, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    if-eqz v10, :cond_f

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->i:Ljava/util/List;

    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_f

    if-ltz v9, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lt v9, v10, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;

    iget v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;->b:I

    goto :goto_b

    :cond_e
    :goto_a
    move v6, v8

    :goto_b
    aput v6, v15, v9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x3

    goto :goto_9

    :cond_10
    if-eqz v7, :cond_11

    iget-object v6, v7, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    goto :goto_c

    :cond_11
    move-object v6, v5

    :goto_c
    invoke-virtual {v0, v6, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v9, :cond_12

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {v0, v4, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_d

    :cond_12
    invoke-virtual {v0, v5, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_d
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x3

    goto/16 :goto_4

    :cond_14
    invoke-interface {v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->k()I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->SKIN_SMOOTH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v2, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_15

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->TEETH_WHITENING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0

    :pswitch_9
    check-cast v12, Ljava/util/Set;

    check-cast v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectEffect;->values()[Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v1

    array-length v2, v1

    :goto_e
    if-ge v8, v2, :cond_1c

    aget-object v3, v1, v8

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v4, v5, :cond_17

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v3, v4, :cond_16

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v11, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v5

    if-eqz v5, :cond_16

    :goto_f
    invoke-static {v11, v3, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->v(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v3

    goto :goto_10

    :cond_16
    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v3, v4, :cond_1b

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v11, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_f

    :cond_17
    iget-object v5, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v11, v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    goto :goto_f

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    const-string v9, "N/A"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1a
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v4, "[getProductIds] Filter out SKU by product mask. productGuid="

    const-string v5, ", skuGuid="

    invoke-static {v4, v7, v5, v6}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MakeupCamInternal"

    const/4 v6, 0x3

    invoke-static {v6, v5, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    :cond_1c
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :pswitch_a
    check-cast v12, Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    check-cast v11, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v4, v7}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Ld20;

    invoke-direct {v1, v5}, Ld20;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v2

    :pswitch_b
    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/z;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_c
    check-cast v12, Lcom/perfectcorp/perfectlib/ContentPreloader;

    check-cast v11, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Lcom/perfectcorp/perfectlib/ContentPreloader;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :pswitch_d
    check-cast v12, Lcom/perfectcorp/perfectlib/ContentPreloader;

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[preloadLook] id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v0, v1, v6, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ContentPreloader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v0, v1}, Lcom/perfectcorp/perfectlib/ContentPreloader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v1

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->p:Ljava/io/File;

    const-string v3, "Look"

    iget-object v4, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b:Z

    new-instance v3, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    invoke-direct {v3, v5}, Lcom/perfectcorp/common/network/DownloadKey$Guid;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->CAM:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    iget-wide v6, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->j:J

    invoke-static {v6, v7, v3, v5}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a(JLcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;Ljava/lang/String;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object v3

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->e:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iget-object v3, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->m:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b()Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v3, Lp3;

    invoke-direct {v3, v11, v0, v2}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/d0;

    invoke-direct {v1, v12, v11, v8}, Lcom/perfectcorp/perfectlib/d0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    return-object v2

    :pswitch_e
    check-cast v12, Lcom/perfectcorp/perfectlib/ContentPreloader;

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->d:Ljava/lang/String;

    iget-object v1, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    iget-object v4, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[preloadSkuByProtocolMethod] sku id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-static {v5, v6, v9, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v5, v12, Lcom/perfectcorp/perfectlib/ContentPreloader;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v6, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-ne v5, v6, :cond_1d

    :try_start_3
    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->sku_images_room_zip:Ljava/lang/String;

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ContentPreloader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    move-result-object v10

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->a(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v6, v9, v10}, Lcom/perfectcorp/perfectlib/ContentPreloader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$d;

    const/4 v9, 0x1

    invoke-direct {v6, v11, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Z)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$d;->c()Z

    move-result v9

    invoke-static {v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$d;->b()V

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$d;->d()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_12

    :catchall_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "[getRoomFolder] failed. id="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v6, v9, v10, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1d
    const/4 v6, 0x0

    :goto_12
    new-instance v9, Lcom/perfectcorp/perfectlib/x;

    invoke-direct {v9, v12, v2}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v5, v6, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-result-object v2

    if-eqz v6, :cond_1e

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_1e
    iget-object v5, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v5

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v9, "mask"

    const-string v10, "guid"

    const-string v13, "pattern"

    const-string v14, "patterns"

    const-string v15, "makeup"

    const-string v8, ", id="

    move-object/from16 p0, v0

    const-string v0, "preload sku failed, lack of pattern="

    move-object/from16 v20, v7

    const-string v7, "\'"

    move-object/from16 v21, v8

    const-string v8, "No pattern GUID can be found in SKU \'"

    move-object/from16 v22, v0

    const-string v0, "makeup_template.xml"

    move-object/from16 v23, v4

    const-string v4, "[preloadSkuByProtocolMethod] "

    if-ne v5, v6, :cond_2a

    iget-object v5, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v0, "Skip empty sub type for eyewear SKU."

    :goto_13
    invoke-static {v3, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_1f
    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_CUBE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v12, v11, v6, v5}, Lcom/perfectcorp/perfectlib/ContentPreloader;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;ZZ)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->normalize()V

    invoke-interface {v0, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v6, "eye_wear"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v4, 0x0

    :goto_14
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v7, "env_frame_src"

    const-string v8, "env_map_src"

    const-string v12, "env_region_src"

    const-string v13, "right_src"

    const-string v14, "left_src"

    const-string v15, "front_src"

    if-ge v4, v6, :cond_20

    :try_start_6
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    move-object/from16 p0, v0

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v16, v4

    const-string v4, "pattern_mask_cube_eyewear"

    invoke-interface {v6, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v6, v15}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v4, v6, v14}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v4, v6, v13}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v4, v6, v12}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v4, v6, v8}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v4, v6, v7}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v6, v5

    goto/16 :goto_16

    :cond_20
    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    sget-object v5, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v4, :cond_22

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_22
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v11, v5}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    move-object/from16 p0, v0

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask_cube_eyewear:Ljava/util/List;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$j;

    move-object/from16 v17, v4

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$j;->mask:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v4, v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    invoke-virtual {v4, v15}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v6, v0, v3, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4, v14}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v6, v0, v3, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4, v13}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v6, v0, v3, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4, v12}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v6, v0, v3, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4, v8}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v6, v0, v3, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4, v7}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v6, v0, v3, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v11, v5, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_15

    :cond_23
    invoke-static {v1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    const/4 v6, 0x0

    :goto_16
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_24
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v10, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-static {v2, v7, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    :goto_18
    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    :cond_26
    iget-object v10, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    move-object/from16 v12, v23

    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :cond_27
    move-object/from16 v23, v12

    goto :goto_17

    :cond_28
    :goto_19
    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k()V

    goto/16 :goto_26

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip unknown sub type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for eyewear SKU."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_2a
    move-object/from16 v6, v21

    move-object/from16 v5, v23

    move-object/from16 v21, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v10

    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->RING:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object/from16 v23, v13

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object/from16 v24, v14

    sget-object v14, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object/from16 v25, v15

    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    sget-object v26, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    filled-new-array {v10, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v13, 0x4

    invoke-static {v13, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->d(I[Ljava/lang/Object;)V

    invoke-static {v13, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v10

    iget-object v13, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-string v13, "Content zip of "

    const-string v14, "try to reload "

    if-eqz v10, :cond_31

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v15, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v15, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v15, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-static {v2, v7, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_2c
    iget-object v15, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-interface {v5, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v10

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    move-object/from16 v26, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    invoke-static/range {p0 .. p0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v6, v20

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x3

    invoke-static {v15, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    iget-object v15, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    invoke-virtual {v12, v2, v15}, Lcom/perfectcorp/perfectlib/ContentPreloader;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "reloaded."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x3

    invoke-static {v15, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v6

    move-object/from16 v15, v16

    move-object/from16 v0, v18

    move-object/from16 v10, v19

    move-object/from16 v2, v26

    move-object/from16 v6, v27

    goto/16 :goto_1a

    :cond_2d
    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v2, v10}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    :cond_2e
    move-object/from16 v15, v16

    move-object/from16 v0, v18

    goto/16 :goto_1a

    :cond_2f
    move-object/from16 v26, v2

    :cond_30
    invoke-virtual/range {v26 .. v26}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k()V

    goto/16 :goto_26

    :cond_31
    move-object/from16 v26, v2

    move-object/from16 v27, v6

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v2

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v2, v6, :cond_36

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->pattern:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_33
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-static {v2, v7, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_34
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_33

    move-object/from16 v16, v0

    move-object/from16 v15, v27

    invoke-static {v9, v10, v15}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v18, v2

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    invoke-static/range {p0 .. p0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-static {v6, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    invoke-virtual {v12, v10, v2}, Lcom/perfectcorp/perfectlib/ContentPreloader;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reloaded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v27, v15

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto/16 :goto_1b

    :cond_35
    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_36
    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v2

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v2, v6, :cond_3b

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v6, v9}, Lcom/perfectcorp/perfectlib/ContentPreloader;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;ZZ)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_37

    move-object/from16 v6, v26

    goto/16 :goto_24

    :cond_37
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    move-result-object v2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-static {v6}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_38

    move-object/from16 p0, v0

    move-object/from16 v6, v26

    goto/16 :goto_1d

    :cond_38
    move-object/from16 v6, v26

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    iget-object v8, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    sget v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    new-instance v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    invoke-direct {v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;-><init>()V

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    iget-object v14, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->a:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    iget-object v14, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->c:Ljava/util/HashMap;

    iget-object v14, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->c:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    iget-object v15, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->f:Ljava/util/ArrayList;

    iget-object v15, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    iget-object v15, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->h:Ljava/util/ArrayList;

    iget-object v15, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->i:Ljava/util/ArrayList;

    move-object/from16 p0, v0

    iget-object v0, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->k:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->l:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->m:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->n:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->o:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->p:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->q:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->r:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    invoke-interface {v0, v13}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v10, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->w:Ljava/lang/String;

    iput-object v0, v12, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->w:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v0, v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto/16 :goto_1c

    :cond_39
    move-object/from16 p0, v0

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v7, v9, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->n(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    :goto_1d
    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    goto :goto_1e

    :cond_3a
    if-nez v9, :cond_43

    invoke-static/range {p0 .. p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto/16 :goto_24

    :cond_3b
    move-object/from16 v6, v26

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v2

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v2, v7, :cond_43

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-virtual {v12, v11, v9, v2}, Lcom/perfectcorp/perfectlib/ContentPreloader;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;ZZ)Ljava/io/File;

    move-result-object v7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->normalize()V

    move-object/from16 v10, v25

    invoke-interface {v0, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v13, "eye_contact"

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v13, v24

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v10, v23

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v10, 0x0

    :goto_1f
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const-string v14, "imagesrc"

    const-string v15, "src"

    if-ge v10, v13, :cond_3c

    :try_start_9
    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    move-object/from16 p0, v0

    move-object/from16 v9, v22

    invoke-interface {v13, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v9

    const-string v9, "thumbnail"

    invoke-interface {v13, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "pattern_mask"

    invoke-interface {v13, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    move-object/from16 v13, v21

    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move/from16 v18, v10

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v9, v10, v15}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v9, v10, v14}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    add-int/lit8 v10, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v21, v13

    const/4 v9, 0x1

    goto :goto_1f

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_22

    :cond_3c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    sget-object v10, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v9, :cond_3e

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_3e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 p0, v0

    iget-object v0, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_thumbnail:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v12, v0, v2, v13}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask:Ljava/util/List;

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;->mask:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    iget-object v8, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_src:Ljava/lang/String;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v12, v8, v9, v13}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_imagesrc:Ljava/lang/String;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v12, v2, v0, v13}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v6, v11, v10, v13}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    move-object/from16 v8, v18

    move-object/from16 v2, v20

    move-object/from16 v9, v22

    goto :goto_20

    :cond_3f
    iget-object v0, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    sget-object v8, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v2, :cond_41

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_42
    invoke-static {v7}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto :goto_24

    :goto_22
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_23

    :catchall_6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw v1

    :cond_43
    :goto_24
    iget-object v0, v6, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j:Ljava/util/Set;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v2, Lzp;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lzp;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v2, Lg7;

    const/16 v7, 0x10

    invoke-direct {v2, v7}, Lg7;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v2, "[isDownloadComponentsIntact] check component available"

    const/4 v15, 0x3

    invoke-static {v15, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x1

    :cond_44
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[isDownloadComponentsIntact] lack of component id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    goto :goto_25

    :cond_45
    if-eqz v9, :cond_46

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k()V

    goto :goto_26

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preload sku failed, lack of download component, id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance v3, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_18

    :goto_26
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
