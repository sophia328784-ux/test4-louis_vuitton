.class public final Lcom/sightcall/mediacapture/domain/entities/Media$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/domain/entities/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/mediacapture/domain/entities/Media;

    const-class p0, Lcom/sightcall/mediacapture/domain/entities/Media;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v4

    sget-object p0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/sightcall/mediacapture/domain/entities/MediaType;

    sget-object p0, Lcom/sightcall/mediacapture/domain/entities/MediaSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/mediacapture/domain/entities/Media;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/domain/entities/Media$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    .line 5
    new-array p0, p1, [Lcom/sightcall/mediacapture/domain/entities/Media;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/domain/entities/Media$Creator;->newArray(I)[Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method
