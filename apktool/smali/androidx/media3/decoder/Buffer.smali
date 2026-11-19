.class public abstract Landroidx/media3/decoder/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/decoder/Buffer;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->b:I

    return-void
.end method

.method public final f(I)Z
    .locals 0

    iget p0, p0, Landroidx/media3/decoder/Buffer;->b:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
