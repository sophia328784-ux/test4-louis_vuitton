.class public final Lcom/canhub/cropper/CropImageOptions$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/canhub/cropper/CropImageOptions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 72

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/canhub/cropper/CropImageOptions;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move-object v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    move-object v2, v1

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    move v2, v4

    goto :goto_1

    :cond_1
    move-object v5, v2

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/canhub/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    move v9, v3

    move-object v3, v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    move v10, v4

    move-object v4, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/canhub/cropper/CropImageView$Guidelines;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/canhub/cropper/CropImageView$ScaleType;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$ScaleType;

    move-result-object v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    move v13, v10

    goto :goto_2

    :cond_2
    move v13, v10

    move v10, v9

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    move-object v14, v8

    move-object v8, v11

    move v11, v13

    goto :goto_3

    :cond_3
    move-object v14, v8

    move-object v8, v11

    move v11, v9

    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    move v15, v9

    move-object v9, v12

    move v12, v13

    move/from16 v16, v12

    goto :goto_4

    :cond_4
    move v15, v9

    move/from16 v16, v13

    move-object v9, v12

    move v12, v15

    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v14

    move/from16 v14, v16

    goto :goto_5

    :cond_5
    move-object/from16 v17, v14

    move v14, v15

    :goto_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v15

    move/from16 v15, v16

    goto :goto_6

    :cond_6
    move/from16 v18, v15

    :goto_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_7

    move/from16 v19, v16

    goto :goto_7

    :cond_7
    move/from16 v19, v16

    move/from16 v16, v18

    :goto_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v20, v17

    move/from16 v21, v18

    move/from16 v17, v19

    goto :goto_8

    :cond_8
    move-object/from16 v20, v17

    move/from16 v17, v18

    move/from16 v21, v17

    :goto_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v22, v19

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v22

    goto :goto_9

    :cond_9
    move-object/from16 v23, v20

    move/from16 v20, v21

    move/from16 v24, v20

    :goto_9
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move/from16 v25, v22

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v26, v23

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    move/from16 v27, v24

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move/from16 v28, v25

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v25

    move-object/from16 v29, v26

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    move/from16 v30, v27

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v27

    move/from16 v31, v28

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move-object/from16 v32, v29

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move/from16 v33, v30

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v30

    move/from16 v34, v31

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v31

    move-object/from16 v35, v32

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move/from16 v36, v33

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v37, v34

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v34

    move-object/from16 v38, v35

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v35

    move/from16 v39, v36

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v36

    move/from16 v40, v37

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v37

    move-object/from16 v41, v38

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move/from16 p0, v1

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/CharSequence;

    move/from16 v43, v40

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v44

    const/16 v45, 0x0

    if-nez v44, :cond_a

    move-object/from16 v44, v45

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    :goto_a
    const-class v46, Lcom/canhub/cropper/CropImageOptions;

    move/from16 v47, v2

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v48

    move-object/from16 v49, v41

    move-object/from16 v41, v44

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v44

    move-object/from16 v50, v45

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v45

    move-object/from16 v51, v46

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v46

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-result-object v52

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v53

    if-eqz v53, :cond_b

    move/from16 v53, v43

    move-object/from16 v43, v48

    move/from16 v48, v53

    :goto_b
    move-object/from16 v54, v2

    goto :goto_c

    :cond_b
    move/from16 v53, v43

    move-object/from16 v43, v48

    move/from16 v48, v39

    goto :goto_b

    :goto_c
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v51, v50

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v50

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v55

    if-eqz v55, :cond_c

    move-object/from16 v55, v51

    move/from16 v51, v53

    goto :goto_d

    :cond_c
    move-object/from16 v55, v51

    move/from16 v51, v39

    :goto_d
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v56

    if-eqz v56, :cond_d

    move-object/from16 v56, v49

    move-object/from16 v49, v2

    move/from16 v2, v47

    move-object/from16 v47, v52

    move/from16 v52, v53

    goto :goto_e

    :cond_d
    move-object/from16 v56, v49

    move-object/from16 v49, v2

    move/from16 v2, v47

    move-object/from16 v47, v52

    move/from16 v52, v39

    :goto_e
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v57

    move/from16 v58, v39

    if-eqz v57, :cond_e

    move/from16 v57, v53

    :goto_f
    move-object/from16 v39, v42

    move-object/from16 v42, v54

    goto :goto_10

    :cond_e
    move/from16 v57, v53

    move/from16 v53, v58

    goto :goto_f

    :goto_10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v54

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v59

    if-eqz v59, :cond_f

    move-object/from16 v59, v55

    move/from16 v55, v57

    goto :goto_11

    :cond_f
    move-object/from16 v59, v55

    move/from16 v55, v58

    :goto_11
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v60

    if-eqz v60, :cond_10

    move-object/from16 v60, v56

    move/from16 v56, v57

    goto :goto_12

    :cond_10
    move-object/from16 v60, v56

    move/from16 v56, v58

    :goto_12
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move/from16 v61, v58

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v58

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v62

    if-eqz v62, :cond_11

    move-object/from16 v62, v59

    move/from16 v59, v57

    goto :goto_13

    :cond_11
    move-object/from16 v62, v59

    move/from16 v59, v61

    :goto_13
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v63

    if-eqz v63, :cond_12

    goto :goto_14

    :cond_12
    move/from16 v57, v61

    :goto_14
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v63, v62

    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v62

    move-object/from16 v64, v63

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v63

    move-object/from16 v65, v64

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v64

    move-object/from16 v66, v65

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v67, v66

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v66

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v68

    if-nez v68, :cond_13

    move-object/from16 v68, v67

    goto :goto_15

    :cond_13
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v68

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    :goto_15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v69

    if-nez v69, :cond_14

    move-object/from16 v69, v67

    goto :goto_16

    :cond_14
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    :goto_16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v70

    if-nez v70, :cond_15

    move-object/from16 v70, v67

    goto :goto_17

    :cond_15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    :goto_17
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v71

    if-nez v71, :cond_16

    move-object/from16 v0, v70

    move-object/from16 v70, v67

    move-object/from16 v67, v68

    move-object/from16 v68, v69

    move-object/from16 v69, v0

    :goto_18
    move-object/from16 v0, v60

    move/from16 v60, v57

    move-object/from16 v57, v1

    move/from16 v1, p0

    goto :goto_19

    :cond_16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v67, v68

    move-object/from16 v68, v69

    move-object/from16 v69, v70

    move-object/from16 v70, v0

    goto :goto_18

    :goto_19
    invoke-direct/range {v0 .. v70}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v32, v0

    return-object v32
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/canhub/cropper/CropImageOptions;

    return-object p0
.end method
