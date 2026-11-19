.class public final Lcom/sightcall/mediacapture/presenter/Source$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sightcall/mediacapture/presenter/Source;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/sightcall/mediacapture/presenter/Source;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/Source;->valueOf(Ljava/lang/String;)Lcom/sightcall/mediacapture/presenter/Source;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/Source$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/sightcall/mediacapture/presenter/Source;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/sightcall/mediacapture/presenter/Source;
    .locals 0

    .line 5
    new-array p0, p1, [Lcom/sightcall/mediacapture/presenter/Source;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/Source$Creator;->newArray(I)[Lcom/sightcall/mediacapture/presenter/Source;

    move-result-object p0

    return-object p0
.end method
