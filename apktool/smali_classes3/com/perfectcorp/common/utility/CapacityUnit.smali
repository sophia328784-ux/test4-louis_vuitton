.class public abstract enum Lcom/perfectcorp/common/utility/CapacityUnit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/common/utility/CapacityUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BITS:Lcom/perfectcorp/common/utility/CapacityUnit;

.field public static final enum BYTES:Lcom/perfectcorp/common/utility/CapacityUnit;

.field public static final enum GBS:Lcom/perfectcorp/common/utility/CapacityUnit;

.field public static final enum KBS:Lcom/perfectcorp/common/utility/CapacityUnit;

.field public static final enum MBS:Lcom/perfectcorp/common/utility/CapacityUnit;

.field private static final synthetic a:[Lcom/perfectcorp/common/utility/CapacityUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/common/utility/c;

    invoke-direct {v0}, Lcom/perfectcorp/common/utility/c;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/utility/CapacityUnit;->BITS:Lcom/perfectcorp/common/utility/CapacityUnit;

    new-instance v1, Lcom/perfectcorp/common/utility/d;

    invoke-direct {v1}, Lcom/perfectcorp/common/utility/d;-><init>()V

    sput-object v1, Lcom/perfectcorp/common/utility/CapacityUnit;->BYTES:Lcom/perfectcorp/common/utility/CapacityUnit;

    new-instance v2, Lcom/perfectcorp/common/utility/e;

    invoke-direct {v2}, Lcom/perfectcorp/common/utility/e;-><init>()V

    sput-object v2, Lcom/perfectcorp/common/utility/CapacityUnit;->KBS:Lcom/perfectcorp/common/utility/CapacityUnit;

    new-instance v3, Lcom/perfectcorp/common/utility/f;

    invoke-direct {v3}, Lcom/perfectcorp/common/utility/f;-><init>()V

    sput-object v3, Lcom/perfectcorp/common/utility/CapacityUnit;->MBS:Lcom/perfectcorp/common/utility/CapacityUnit;

    new-instance v4, Lcom/perfectcorp/common/utility/g;

    invoke-direct {v4}, Lcom/perfectcorp/common/utility/g;-><init>()V

    sput-object v4, Lcom/perfectcorp/common/utility/CapacityUnit;->GBS:Lcom/perfectcorp/common/utility/CapacityUnit;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/perfectcorp/common/utility/CapacityUnit;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Lcom/perfectcorp/common/utility/CapacityUnit;->a:[Lcom/perfectcorp/common/utility/CapacityUnit;

    return-void
.end method

.method public static synthetic a(JJJ)J
    .locals 1

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    neg-long p4, p4

    cmp-long p4, p0, p4

    if-gez p4, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/common/utility/CapacityUnit;
    .locals 1

    const-class v0, Lcom/perfectcorp/common/utility/CapacityUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/utility/CapacityUnit;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/common/utility/CapacityUnit;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/utility/CapacityUnit;->a:[Lcom/perfectcorp/common/utility/CapacityUnit;

    invoke-virtual {v0}, [Lcom/perfectcorp/common/utility/CapacityUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/common/utility/CapacityUnit;

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c(J)J
.end method
