.class public Lorg/teleal/cling/support/model/TransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object p0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    .line 62
    sget-object p0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CurrentTransportState"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lorg/teleal/cling/support/model/TransportState;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->CUSTOM:Lorg/teleal/cling/support/model/TransportState;

    iput-object v0, v1, Lorg/teleal/cling/support/model/TransportState;->value:Ljava/lang/String;

    move-object v0, v1

    :goto_0
    const-string v1, "CurrentTransportStatus"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v1, v1, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_1
    invoke-static {v1}, Lorg/teleal/cling/support/model/TransportStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v2, Lorg/teleal/cling/support/model/TransportStatus;->CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

    iput-object v1, v2, Lorg/teleal/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    move-object v1, v2

    :goto_1
    const-string v2, "CurrentSpeed"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object p1, p1, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lorg/teleal/cling/support/model/TransportInfo;-><init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object p0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    .line 65
    sget-object p0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object p0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    .line 68
    sget-object p0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object p0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    .line 71
    sget-object p0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/TransportState;Lorg/teleal/cling/support/model/TransportStatus;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object p0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    .line 74
    sget-object p0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method
