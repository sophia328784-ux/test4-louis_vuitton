.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;",
        "identifier",
        "",
        "description",
        "addressLine1",
        "addressLine2",
        "addressLine3",
        "postalCode",
        "stateName",
        "stateCode",
        "cityName",
        "countryName",
        "countryCode",
        "firstName",
        "lastName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-static {p3, p6, p9, p11}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->k:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->m:Ljava/lang/String;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel$Companion;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->n:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    :goto_2
    return v2

    :cond_11
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->i:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->k:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->m:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->n:Ljava/lang/String;

    if-nez p0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel$Companion;

    :goto_0
    const-string v1, ", description="

    const-string v2, ", addressLine1="

    const-string v3, "CareServiceAddressUiModel(identifier="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->c:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addressLine2="

    const-string v2, ", addressLine3="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", postalCode="

    const-string v2, ", stateName="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", stateCode="

    const-string v2, ", cityName="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", countryName="

    const-string v2, ", countryCode="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", firstName="

    const-string v2, ", lastName="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->n:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->b:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel$Companion;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->n:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
