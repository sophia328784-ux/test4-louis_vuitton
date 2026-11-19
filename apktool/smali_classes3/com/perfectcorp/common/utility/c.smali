.class final enum Lcom/perfectcorp/common/utility/c;
.super Lcom/perfectcorp/common/utility/CapacityUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BITS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(J)J
    .locals 2

    const-wide/16 v0, 0x2000

    div-long/2addr p1, v0

    return-wide p1
.end method
