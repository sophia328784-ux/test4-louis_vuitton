.class public abstract Lcoil3/size/DimensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(I)V
    .locals 0

    if-lez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "px must be > 0."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
