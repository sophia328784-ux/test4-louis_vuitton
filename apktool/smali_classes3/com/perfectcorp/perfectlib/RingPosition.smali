.class public final enum Lcom/perfectcorp/perfectlib/RingPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/RingPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOREFINGER:Lcom/perfectcorp/perfectlib/RingPosition;

.field public static final enum LITTLE_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

.field public static final enum MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

.field public static final enum RING_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

.field public static final enum THUMB:Lcom/perfectcorp/perfectlib/RingPosition;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/RingPosition;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/RingPosition;

    const/4 v1, 0x0

    const-string v2, "thumb"

    const-string v3, "THUMB"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/RingPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/RingPosition;->THUMB:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance v1, Lcom/perfectcorp/perfectlib/RingPosition;

    const/4 v2, 0x1

    const-string v3, "fore"

    const-string v4, "FOREFINGER"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/RingPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/RingPosition;->FOREFINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance v2, Lcom/perfectcorp/perfectlib/RingPosition;

    const/4 v3, 0x2

    const-string v4, "middle"

    const-string v5, "MIDDLE_FINGER"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/RingPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/RingPosition;->MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance v3, Lcom/perfectcorp/perfectlib/RingPosition;

    const/4 v4, 0x3

    const-string v5, "ring"

    const-string v6, "RING_FINGER"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/RingPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/RingPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    new-instance v4, Lcom/perfectcorp/perfectlib/RingPosition;

    const/4 v5, 0x4

    const-string v6, "little"

    const-string v7, "LITTLE_FINGER"

    invoke-direct {v4, v7, v5, v6}, Lcom/perfectcorp/perfectlib/RingPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/RingPosition;->LITTLE_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/RingPosition;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/RingPosition;->b:[Lcom/perfectcorp/perfectlib/RingPosition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/RingPosition;->a:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/RingPosition;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/RingPosition;->values()[Lcom/perfectcorp/perfectlib/RingPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/RingPosition;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/RingPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/RingPosition;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/RingPosition;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/RingPosition;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/RingPosition;->b:[Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/RingPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/RingPosition;

    return-object v0
.end method
