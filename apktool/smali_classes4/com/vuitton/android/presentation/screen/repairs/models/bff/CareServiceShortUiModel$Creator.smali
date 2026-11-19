.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;",
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
    .locals 23

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    move-object v3, v1

    move-object v1, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    move-result-object v7

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    move-result-object v9

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v5

    goto :goto_3

    :cond_3
    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    :goto_3
    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    move-object v11, v5

    move-object v5, v7

    move-object v7, v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v8

    move-object v8, v10

    move-object v12, v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v12

    goto :goto_4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_5

    move-object v14, v12

    goto :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v15, :cond_7

    move/from16 v15, v17

    goto :goto_7

    :cond_7
    move/from16 v15, v16

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v16

    move/from16 v16, v17

    goto :goto_8

    :cond_8
    move/from16 v18, v16

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_9

    move/from16 v19, v17

    goto :goto_9

    :cond_9
    move/from16 v19, v17

    move/from16 v17, v18

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v18

    move/from16 v18, v19

    goto :goto_a

    :cond_a
    move/from16 v20, v18

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v19, v20

    :goto_b
    const/16 v20, 0x0

    move-object/from16 v22, v14

    move-object v14, v12

    move-object v12, v13

    move-object/from16 v13, v22

    invoke-direct/range {v0 .. v20}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    return-object p0
.end method
