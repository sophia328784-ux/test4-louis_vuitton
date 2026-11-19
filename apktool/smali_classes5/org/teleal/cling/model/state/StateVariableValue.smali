.class public Lorg/teleal/cling/model/state/StateVariableValue;
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
.field public final c:Lorg/teleal/cling/model/meta/StateVariable;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/StateVariable<",
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

    iget-object v0, p1, Lorg/teleal/cling/model/meta/StateVariable;->b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a:Lorg/teleal/cling/model/types/Datatype;

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/model/VariableValue;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    return-void
.end method
