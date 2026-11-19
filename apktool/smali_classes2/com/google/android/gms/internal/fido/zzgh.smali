.class public abstract Lcom/google/android/gms/internal/fido/zzgh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 5

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    div-int v2, p0, p1

    mul-int v3, p1, v2

    sub-int v3, p0, v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    xor-int/2addr p0, p1

    sget-object v4, Lcom/google/android/gms/internal/fido/zzgg;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, La61;->h()V

    return v1

    :pswitch_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr v0, p1

    if-nez v0, :cond_1

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    :pswitch_1
    if-lez p0, :cond_2

    goto :goto_0

    :pswitch_2
    if-gez p0, :cond_2

    :goto_0
    :pswitch_3
    add-int/2addr v2, p0

    :cond_2
    :goto_1
    :pswitch_4
    return v2

    :pswitch_5
    const-string p0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "/ by zero"

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
