.class public final Lcom/kakao/sdk/user/model/Account$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/user/model/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kakao/sdk/user/model/Account;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
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
    .locals 33

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/kakao/sdk/user/model/Account;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v4

    goto :goto_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v4

    goto :goto_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_6

    move-object/from16 v8, p1

    move-object v7, v4

    goto :goto_6

    :cond_6
    sget-object v7, Lcom/kakao/sdk/user/model/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v8, p1

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    :goto_6
    check-cast v7, Lcom/kakao/sdk/user/model/Profile;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_7

    move-object v9, v4

    :goto_7
    move v10, v3

    move-object v3, v6

    goto :goto_9

    :cond_7
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    move v9, v3

    goto :goto_8

    :cond_8
    move v9, v2

    :goto_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_7

    :goto_9
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-nez v11, :cond_9

    move-object v11, v4

    goto :goto_b

    :cond_9
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    move v11, v10

    goto :goto_a

    :cond_a
    move v11, v2

    :goto_a
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_b
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-nez v12, :cond_b

    move-object v12, v4

    goto :goto_d

    :cond_b
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_c

    move v12, v10

    goto :goto_c

    :cond_c
    move v12, v2

    :goto_c
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_d
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_d

    move-object v13, v4

    :goto_e
    move v14, v10

    goto :goto_10

    :cond_d
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_e

    move v13, v10

    goto :goto_f

    :cond_e
    move v13, v2

    :goto_f
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_e

    :goto_10
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_f

    move-object v15, v4

    goto :goto_12

    :cond_f
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_10

    move v15, v14

    goto :goto_11

    :cond_10
    move v15, v2

    :goto_11
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    :goto_12
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-nez v16, :cond_11

    move-object/from16 v16, v4

    goto :goto_13

    :cond_11
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kakao/sdk/user/model/AgeRange;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/AgeRange;

    move-result-object v16

    :goto_13
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v17, v4

    :goto_14
    move/from16 v18, v14

    goto :goto_16

    :cond_12
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_13

    move/from16 v17, v14

    goto :goto_15

    :cond_13
    move/from16 v17, v2

    :goto_15
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_14

    :goto_16
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-nez v19, :cond_14

    move-object/from16 v19, v4

    :goto_17
    move-object v8, v12

    move-object/from16 v12, v16

    goto :goto_19

    :cond_14
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_15

    move/from16 v19, v18

    goto :goto_18

    :cond_15
    move/from16 v19, v2

    :goto_18
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto :goto_17

    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-nez v20, :cond_16

    move-object/from16 v20, v4

    goto :goto_1a

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kakao/sdk/user/model/BirthdayType;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/BirthdayType;

    move-result-object v20

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-nez v21, :cond_17

    move-object/from16 v21, v4

    goto :goto_1c

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_18

    move/from16 v21, v18

    goto :goto_1b

    :cond_18
    move/from16 v21, v2

    :goto_1b
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-nez v22, :cond_19

    move-object/from16 v22, v4

    goto :goto_1d

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/kakao/sdk/user/model/Gender;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/Gender;

    move-result-object v22

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-nez v23, :cond_1a

    move-object/from16 v23, v4

    :goto_1e
    move/from16 v24, v18

    move-object/from16 v18, v21

    goto :goto_20

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_1b

    move/from16 v23, v18

    goto :goto_1f

    :cond_1b
    move/from16 v23, v2

    :goto_1f
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    goto :goto_1e

    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-nez v25, :cond_1c

    move-object/from16 v25, v4

    :goto_21
    move/from16 v26, v2

    move-object v2, v5

    move-object v5, v9

    move-object v9, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v23

    goto :goto_23

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1d

    move/from16 v25, v24

    goto :goto_22

    :cond_1d
    move/from16 v25, v2

    :goto_22
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    goto :goto_21

    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-nez v27, :cond_1e

    move-object/from16 v27, v4

    goto :goto_25

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_1f

    move/from16 v27, v24

    goto :goto_24

    :cond_1f
    move/from16 v27, v26

    :goto_24
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-nez v28, :cond_20

    move-object/from16 v28, v4

    goto :goto_26

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/kakao/sdk/user/model/Gender;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/Gender;

    move-result-object v28

    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    if-nez v29, :cond_21

    move-object/from16 v29, v4

    :goto_27
    move/from16 v30, v24

    move-object/from16 v24, v27

    goto :goto_29

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    if-eqz v29, :cond_22

    move/from16 v29, v24

    goto :goto_28

    :cond_22
    move/from16 v29, v26

    :goto_28
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    goto :goto_27

    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-nez v31, :cond_23

    move-object/from16 v31, v4

    goto :goto_2b

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_24

    move/from16 v31, v30

    goto :goto_2a

    :cond_24
    move/from16 v31, v26

    :goto_2a
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v32

    if-nez v32, :cond_25

    :goto_2c
    move-object/from16 v26, v29

    move-object/from16 v29, v4

    move-object v4, v7

    move-object v7, v11

    move-object v11, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    move-object/from16 v25, v28

    move-object/from16 v28, v31

    goto :goto_2e

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_2d

    :cond_26
    move/from16 v30, v26

    :goto_2d
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2c

    :goto_2e
    invoke-direct/range {v0 .. v29}, Lcom/kakao/sdk/user/model/Account;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/kakao/sdk/user/model/Account;

    return-object p0
.end method
