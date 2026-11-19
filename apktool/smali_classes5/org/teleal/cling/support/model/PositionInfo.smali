.class public Lorg/teleal/cling/support/model/PositionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 118
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance p3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 151
    const-string p3, "00:00:00"

    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    .line 153
    new-instance p3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p3, p1, p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance p4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v0, 0x0

    invoke-direct {p4, v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 137
    const-string p4, "00:00:00"

    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    .line 139
    new-instance p4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p4, p1, p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 140
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 p7, 0x0

    invoke-direct {p4, p7, p8}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 144
    const-string p4, "00:00:00"

    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    .line 146
    new-instance p4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p4, p1, p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 147
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 148
    iput-object p6, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Track"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iget-wide v2, v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    const-string v0, "TrackDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "TrackMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "TrackURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "RelTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "AbsTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "RelCount"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v0, "AbsCount"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object p1, p1, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/teleal/cling/support/model/PositionInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PositionInfo;JJ)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 129
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 132
    iget-object p1, p1, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 133
    invoke-static {p2, p3}, Lorg/teleal/cling/model/ModelUtil;->b(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    .line 134
    invoke-static {p4, p5}, Lorg/teleal/cling/model/ModelUtil;->b(J)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PositionInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance p3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 122
    const-string p3, "00:00:00"

    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    .line 124
    iget-object p3, p1, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 125
    iget-object p1, p1, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(PositionInfo) Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->a:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RelTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/support/model/PositionInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Percent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const-string v4, "NOT_IMPLEMENTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v4, v2

    :goto_1
    if-nez p0, :cond_2

    move-wide v6, v2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v6

    :goto_2
    cmp-long p0, v4, v2

    if-eqz p0, :cond_4

    cmp-long p0, v6, v2

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/Double;

    long-to-double v1, v4

    long-to-double v3, v6

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p0, 0x0

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
