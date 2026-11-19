.class public Lcom/perfectcorp/perfectlib/ymk/utility/RingPositionHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/RingPosition;)Lcom/perfectcorp/perfectlib/ymk/utility/a;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->d:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->e:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->c:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->b:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->a:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    return-object p0
.end method
