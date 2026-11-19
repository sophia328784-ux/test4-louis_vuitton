.class public final Lcom/sightcall/mediacapture/domain/entities/Media;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000cH\u00c6\u0003JE\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0006\u0010!\u001a\u00020\"J\u0014\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0083\u0004J\n\u0010\'\u001a\u00020\"H\u00d6\u0081\u0004J\n\u0010(\u001a\u00020\u0005H\u00d6\u0081\u0004J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006."
    }
    d2 = {
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "Landroid/os/Parcelable;",
        "uri",
        "Landroid/net/Uri;",
        "mimeType",
        "",
        "extension",
        "size",
        "Landroid/util/Size;",
        "type",
        "Lcom/sightcall/mediacapture/domain/entities/MediaType;",
        "source",
        "Lcom/sightcall/mediacapture/domain/entities/MediaSource;",
        "<init>",
        "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)V",
        "getUri",
        "()Landroid/net/Uri;",
        "getMimeType",
        "()Ljava/lang/String;",
        "getExtension",
        "getSize",
        "()Landroid/util/Size;",
        "getType",
        "()Lcom/sightcall/mediacapture/domain/entities/MediaType;",
        "getSource",
        "()Lcom/sightcall/mediacapture/domain/entities/MediaSource;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_release"
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
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extension:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final size:Landroid/util/Size;

.field private final source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

.field private final type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/mediacapture/domain/entities/Media$Creator;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/domain/entities/Media$Creator;-><init>()V

    sput-object v0, Lcom/sightcall/mediacapture/domain/entities/Media;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    iput-object p5, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    iput-object p6, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;ILjava/lang/Object;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/sightcall/mediacapture/domain/entities/Media;->copy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    return-object p0
.end method

.method public final component5()Lcom/sightcall/mediacapture/domain/entities/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    return-object p0
.end method

.method public final component6()Lcom/sightcall/mediacapture/domain/entities/MediaSource;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    return-object p0
.end method

.method public final copy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/mediacapture/domain/entities/Media;

    invoke-direct/range {p0 .. p6}, Lcom/sightcall/mediacapture/domain/entities/Media;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Lcom/sightcall/mediacapture/domain/entities/MediaType;Lcom/sightcall/mediacapture/domain/entities/MediaSource;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    iget-object v1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    iget-object v3, p1, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    iget-object v3, p1, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    iget-object p1, p1, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    return-object p0
.end method

.method public final getSource()Lcom/sightcall/mediacapture/domain/entities/MediaSource;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    return-object p0
.end method

.method public final getType()Lcom/sightcall/mediacapture/domain/entities/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    iget-object v4, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Media(uri="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mimeType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extension="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->size:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->type:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    invoke-virtual {v0, p1, p2}, Lcom/sightcall/mediacapture/domain/entities/MediaType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/domain/entities/Media;->source:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/domain/entities/MediaSource;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
