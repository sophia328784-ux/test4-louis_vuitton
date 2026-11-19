.class public final synthetic Lh40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:D


# direct methods
.method public synthetic constructor <init>(ZDI)V
    .locals 0

    iput p4, p0, Lh40;->b:I

    iput-boolean p1, p0, Lh40;->c:Z

    iput-wide p2, p0, Lh40;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh40;->b:I

    iget-wide v1, p0, Lh40;->d:D

    iget-boolean p0, p0, Lh40;->c:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    neg-int p0, p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    if-eqz p0, :cond_1

    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    goto :goto_1

    :cond_1
    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    neg-int p0, p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    if-eqz p0, :cond_2

    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    goto :goto_2

    :cond_2
    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    neg-int p0, p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eqz p0, :cond_3

    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    goto :goto_3

    :cond_3
    int-to-double p0, p1

    mul-double/2addr p0, v1

    double-to-int p0, p0

    neg-int p0, p0

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
