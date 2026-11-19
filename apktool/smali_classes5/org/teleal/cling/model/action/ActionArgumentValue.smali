.class public Lorg/teleal/cling/model/action/ActionArgumentValue;
.super Lorg/teleal/cling/model/VariableValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Lorg/teleal/cling/model/VariableValue;"
    }
.end annotation


# instance fields
.field public final c:Lorg/teleal/cling/model/meta/ActionArgument;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/ActionArgument<",
            "TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    iget-object v0, p1, Lorg/teleal/cling/model/meta/ActionArgument;->f:Lorg/teleal/cling/model/meta/Action;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/ActionArgument;->c:Ljava/lang/String;

    const-string v2, "VirtualQueryActionInput"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lorg/teleal/cling/model/meta/StateVariable;

    new-instance v1, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;)V

    invoke-direct {v0, v2, v1}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;)V

    goto :goto_0

    :cond_0
    const-string v2, "VirtualQueryActionOutput"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lorg/teleal/cling/model/meta/StateVariable;

    new-instance v1, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;)V

    invoke-direct {v0, v2, v1}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/teleal/cling/model/meta/Service;->d:Ljava/util/HashMap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/StateVariable;

    :goto_0
    iget-object v0, v0, Lorg/teleal/cling/model/meta/StateVariable;->b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a:Lorg/teleal/cling/model/types/Datatype;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/model/VariableValue;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionArgumentValue;->c:Lorg/teleal/cling/model/meta/ActionArgument;

    return-void
.end method
