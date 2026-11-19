.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentedControlStateBundle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;",
        "Landroid/os/Parcelable;",
        "",
        "currentIndex",
        "",
        "",
        "labels",
        "<init>",
        "(ILjava/util/List;)V",
        "system"
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
            "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegmentedControlStateBundle(currentIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
