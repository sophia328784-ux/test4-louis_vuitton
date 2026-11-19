.class final enum Lcom/perfectcorp/common/utility/f;
.super Lcom/perfectcorp/common/utility/CapacityUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MBS"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 6

    const-wide/32 v2, 0x100000

    const-wide v4, 0x7ffffffffffL

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/common/utility/CapacityUnit;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)J
    .locals 6

    const-wide/16 v2, 0x400

    const-wide v4, 0x1fffffffffffffL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/common/utility/CapacityUnit;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method
