.class public Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 44
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const-string v0, "UPnP specification violation, allowed value range minimum \'"

    const-string v1, "\' is greater than maximum \'"

    invoke-static {p1, p2, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\', switching values."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->d:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iput-wide p3, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->a:J

    iput-wide p1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->b:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->a:J

    iput-wide p3, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->b:J

    :goto_0
    iput-wide p5, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->c:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Range Min: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
