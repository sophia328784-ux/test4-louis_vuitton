.class abstract Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Fhd1080p;,
        Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Hd720p;,
        Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;,
        Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Sd480p;,
        Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Uhd4k;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u0001:\u0005\u000c\r\u000e\u000f\u0010B\u0019\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u0082\u0001\u0005\u0011\u0012\u0013\u0014\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;",
        "",
        "size",
        "Landroid/util/Size;",
        "bitRate",
        "",
        "<init>",
        "(Landroid/util/Size;I)V",
        "getSize",
        "()Landroid/util/Size;",
        "getBitRate",
        "()I",
        "Ld360p",
        "Sd480p",
        "Hd720p",
        "Fhd1080p",
        "Uhd4k",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Fhd1080p;",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Hd720p;",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Sd480p;",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Uhd4k;",
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


# instance fields
.field private final bitRate:I

.field private final size:Landroid/util/Size;


# direct methods
.method private constructor <init>(Landroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->size:Landroid/util/Size;

    iput p2, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->bitRate:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;-><init>(Landroid/util/Size;I)V

    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 0

    iget p0, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->bitRate:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->size:Landroid/util/Size;

    return-object p0
.end method
