.class public Lorg/teleal/cling/model/meta/QueryStateVariableAction;
.super Lorg/teleal/cling/model/meta/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Lorg/teleal/cling/model/meta/Action<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lorg/teleal/cling/model/meta/QueryStateVariableAction;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    new-instance v0, Lorg/teleal/cling/model/meta/ActionArgument;

    sget-object v1, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->IN:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    const-string v2, "varName"

    const-string v3, "VirtualQueryActionInput"

    invoke-direct {v0, v2, v3, v1}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V

    new-instance v1, Lorg/teleal/cling/model/meta/ActionArgument;

    sget-object v2, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    const-string v3, "return"

    const-string v4, "VirtualQueryActionOutput"

    invoke-direct {v1, v3, v4, v2}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V

    filled-new-array {v0, v1}, [Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    const-string v1, "QueryStateVariable"

    invoke-direct {p0, v1, v0}, Lorg/teleal/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V

    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    return-void

    :cond_0
    const-string p0, "Final value has been set already, model is immutable"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "QueryStateVariable"

    return-object p0
.end method
