.class public final enum Lcom/perfectcorp/perfectlib/NailPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/NailPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOREFINGER:Lcom/perfectcorp/perfectlib/NailPosition;

.field public static final enum LITTLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

.field public static final enum MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

.field public static final enum RING_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

.field public static final enum THUMB:Lcom/perfectcorp/perfectlib/NailPosition;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/NailPosition;


# instance fields
.field final lookString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/NailPosition;

    const/4 v1, 0x0

    const-string v2, "thumb"

    const-string v3, "THUMB"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/NailPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->THUMB:Lcom/perfectcorp/perfectlib/NailPosition;

    new-instance v1, Lcom/perfectcorp/perfectlib/NailPosition;

    const/4 v2, 0x1

    const-string v3, "fore"

    const-string v4, "FOREFINGER"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/NailPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->FOREFINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    new-instance v2, Lcom/perfectcorp/perfectlib/NailPosition;

    const/4 v3, 0x2

    const-string v4, "middle"

    const-string v5, "MIDDLE_FINGER"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/NailPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/NailPosition;->MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    new-instance v3, Lcom/perfectcorp/perfectlib/NailPosition;

    const/4 v4, 0x3

    const-string v5, "ring"

    const-string v6, "RING_FINGER"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/NailPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/NailPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    new-instance v4, Lcom/perfectcorp/perfectlib/NailPosition;

    const/4 v5, 0x4

    const-string v6, "little"

    const-string v7, "LITTLE_FINGER"

    invoke-direct {v4, v7, v5, v6}, Lcom/perfectcorp/perfectlib/NailPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/NailPosition;->LITTLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/NailPosition;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->a:[Lcom/perfectcorp/perfectlib/NailPosition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/NailPosition;->lookString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/NailPosition;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/NailPosition;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/NailPosition;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->a:[Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/NailPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/NailPosition;

    return-object v0
.end method
