.class public final Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;
.super Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ld360p"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;-><init>()V

    sput-object v0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;->INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1e0

    const/16 v2, 0x168

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    const v1, 0x1c3800

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;-><init>(Landroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
