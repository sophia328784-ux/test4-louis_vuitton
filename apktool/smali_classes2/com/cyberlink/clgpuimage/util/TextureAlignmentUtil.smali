.class public abstract Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;
    }
.end annotation


# direct methods
.method public static a(Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;IIII)[F
    .locals 4

    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    sget-object p2, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x3

    const/4 p4, 0x2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, p4, :cond_2

    if-eq p0, p2, :cond_0

    move p0, v0

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    cmpg-float p0, p3, p1

    const/high16 v3, 0x40000000    # 2.0f

    if-gez p0, :cond_1

    div-float/2addr p3, p1

    sub-float p0, v1, p3

    div-float/2addr p0, v3

    add-float/2addr p3, p0

    move p1, v0

    move v0, p0

    move p0, p1

    move p1, v1

    move v1, p3

    goto :goto_1

    :cond_1
    div-float/2addr p1, p3

    sub-float p0, v1, p1

    div-float/2addr p0, v3

    add-float/2addr p1, p0

    goto :goto_1

    :cond_2
    div-float/2addr p1, p3

    sub-float p0, v1, p1

    goto :goto_0

    :cond_3
    div-float/2addr p1, p3

    move p0, v0

    :goto_1
    const/4 p3, 0x4

    new-array p3, p3, [F

    const/4 v3, 0x0

    aput v0, p3, v3

    aput p0, p3, v2

    aput v1, p3, p4

    aput p1, p3, p2

    return-object p3
.end method
