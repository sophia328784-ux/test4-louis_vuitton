.class public final Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;",
        "",
        "",
        "id",
        "name",
        "Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;",
        "storeType",
        "phone",
        "Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;",
        "address",
        "imageUrl",
        "",
        "stockAvailability",
        "",
        "Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;",
        "openingHours",
        "Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;",
        "megatrio",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/util/List;

.field public final i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    iput-object p8, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->h:Ljava/util/List;

    iput-object p9, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v10, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    goto :goto_1

    :cond_0
    move-object/from16 v10, p9

    goto :goto_0

    .line 43
    :goto_1
    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;
    .locals 10

    iget-object v2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->f:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    iget-object v8, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->h:Ljava/util/List;

    iget-object v9, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->f:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->h:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", name="

    const-string v1, ", storeType="

    const-string v2, "StoreUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stockAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", openingHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", megatrio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->i:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
