.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
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
    .locals 57

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    move-result-object v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v12

    :goto_0
    if-eq v14, v1, :cond_1

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v15, v0, v13, v14, v11}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v14

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v15, v12

    :goto_2
    if-eq v15, v1, :cond_3

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v0, v14, v15, v11}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v15

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v15, v12

    move-object v12, v14

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_4
    if-eq v15, v2, :cond_5

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    move-result-object v11

    move-object/from16 v17, v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move/from16 v19, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v20, v3

    const/4 v3, 0x0

    :goto_5
    if-eq v3, v1, :cond_4

    move/from16 v21, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v3

    move/from16 v1, v21

    move-object/from16 v4, v22

    goto :goto_5

    :cond_4
    move-object/from16 v22, v4

    invoke-virtual {v14, v11, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v17, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    const-class v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_6
    if-eq v4, v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v19, v1

    const/4 v11, 0x0

    move-object/from16 v21, v2

    :cond_7
    move-object/from16 v23, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :goto_7
    move-object/from16 v21, v2

    if-eq v1, v4, :cond_7

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v23, v3

    const/4 v3, 0x1

    invoke-static {v2, v0, v11, v1, v3}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    goto :goto_7

    :goto_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_9
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    :goto_a
    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    move-object/from16 v18, v11

    move-object v11, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v21

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v4, v22

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v23

    const/16 v24, 0x0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move/from16 v25, v24

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move/from16 v26, v25

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move/from16 v27, v26

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move/from16 v28, v27

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move/from16 v29, v28

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    move/from16 v30, v29

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    move/from16 v31, v30

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v32

    if-nez v32, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    :goto_b
    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-nez v33, :cond_c

    move-object/from16 v33, v1

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v33, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-nez v34, :cond_d

    move-object/from16 v34, v1

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v34, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v35

    move-object/from16 v32, v34

    if-eqz v35, :cond_e

    const/16 v34, 0x1

    :goto_e
    const/16 v35, 0x1

    goto :goto_f

    :cond_e
    move/from16 v34, v31

    goto :goto_e

    :goto_f
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v37

    if-eqz v37, :cond_f

    move/from16 v37, v35

    move-object/from16 v35, v36

    move/from16 v36, v37

    goto :goto_10

    :cond_f
    move/from16 v37, v35

    move-object/from16 v35, v36

    move/from16 v36, v31

    :goto_10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v38

    if-eqz v38, :cond_10

    move/from16 v38, v37

    goto :goto_11

    :cond_10
    move/from16 v38, v37

    move/from16 v37, v31

    :goto_11
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v39

    if-eqz v39, :cond_11

    move/from16 v39, v38

    goto :goto_12

    :cond_11
    move/from16 v39, v38

    move/from16 v38, v31

    :goto_12
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_12

    move/from16 v40, v39

    goto :goto_13

    :cond_12
    move/from16 v40, v39

    move/from16 v39, v31

    :goto_13
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_13

    move/from16 v41, v40

    goto :goto_14

    :cond_13
    move/from16 v41, v40

    move/from16 v40, v31

    :goto_14
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_14

    move/from16 v42, v41

    goto :goto_15

    :cond_14
    move/from16 v42, v41

    move/from16 v41, v31

    :goto_15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v43

    if-eqz v43, :cond_15

    move/from16 v43, v42

    goto :goto_16

    :cond_15
    move/from16 v43, v42

    move/from16 v42, v31

    :goto_16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_16

    move/from16 v44, v43

    goto :goto_17

    :cond_16
    move/from16 v44, v43

    move/from16 v43, v31

    :goto_17
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v45

    if-eqz v45, :cond_17

    move/from16 v45, v44

    goto :goto_18

    :cond_17
    move/from16 v45, v44

    move/from16 v44, v31

    :goto_18
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v46

    if-nez v46, :cond_18

    move-object/from16 v46, v1

    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    move-object/from16 v46, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_19
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v47

    if-nez v47, :cond_19

    move-object/from16 v47, v1

    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    move-object/from16 v47, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_1a
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-object/from16 v48, v1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v19, v1

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    move-object/from16 v19, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_1b
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v50

    move-object/from16 p0, v1

    if-nez v50, :cond_1c

    move-object/from16 v50, v2

    move-object/from16 v51, v3

    const/4 v2, 0x0

    :cond_1b
    move-object/from16 v53, v4

    move/from16 v4, v45

    goto :goto_1d

    :cond_1c
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v50, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v51, v3

    move/from16 v3, v31

    :goto_1c
    if-eq v3, v1, :cond_1b

    move/from16 v52, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v53, v4

    move/from16 v4, v45

    invoke-static {v1, v0, v2, v3, v4}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v3

    move/from16 v1, v52

    move-object/from16 v4, v53

    goto :goto_1c

    :goto_1d
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v4, v31

    :goto_1e
    if-eq v4, v1, :cond_1d

    move/from16 v52, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v54, v2

    const/4 v2, 0x1

    invoke-static {v1, v0, v3, v4, v2}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v4

    move/from16 v1, v52

    move-object/from16 v2, v54

    goto :goto_1e

    :cond_1d
    move-object/from16 v54, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v2, v31

    :goto_1f
    if-eq v2, v1, :cond_1e

    move/from16 v31, v1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v52, v3

    const/4 v3, 0x1

    invoke-static {v1, v0, v4, v2, v3}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v2

    move/from16 v1, v31

    move-object/from16 v3, v52

    goto :goto_1f

    :cond_1e
    move-object/from16 v52, v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v50

    move-object/from16 v50, v54

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v3, v20

    move-object/from16 v20, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/16 v56, 0x0

    move-object/from16 v45, v47

    move-object/from16 v31, v51

    move-object/from16 v51, v52

    move-object/from16 v52, v4

    move-object/from16 v47, v19

    move-object/from16 v19, v33

    move-object/from16 v33, v46

    move-object/from16 v46, v48

    move-object/from16 v4, v53

    move-object/from16 v48, p0

    move-object/from16 v53, v1

    invoke-direct/range {v2 .. v56}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    return-object p0
.end method
