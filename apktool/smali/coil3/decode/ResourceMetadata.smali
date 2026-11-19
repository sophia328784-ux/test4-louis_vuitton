.class public final Lcoil3/decode/ResourceMetadata;
.super Lcoil3/decode/ImageSource$Metadata;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/decode/ResourceMetadata;",
        "Lcoil3/decode/ImageSource$Metadata;",
        "",
        "packageName",
        "",
        "resId",
        "density",
        "<init>",
        "(Ljava/lang/String;II)V",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcoil3/decode/ImageSource$Metadata;-><init>()V

    iput-object p1, p0, Lcoil3/decode/ResourceMetadata;->a:Ljava/lang/String;

    iput p2, p0, Lcoil3/decode/ResourceMetadata;->b:I

    return-void
.end method
