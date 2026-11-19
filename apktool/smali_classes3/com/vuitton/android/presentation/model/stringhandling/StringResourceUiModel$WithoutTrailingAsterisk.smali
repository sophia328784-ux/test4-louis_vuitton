.class public final Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;
.super Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithoutTrailingAsterisk"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "source",
        "<init>",
        "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V",
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
            "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WithoutTrailingAsterisk(source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

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

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
