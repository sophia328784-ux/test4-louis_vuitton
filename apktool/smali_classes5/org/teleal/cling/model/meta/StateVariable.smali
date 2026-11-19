.class public Lorg/teleal/cling/model/meta/StateVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/Validatable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

.field public final c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

.field public d:Lorg/teleal/cling/model/meta/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;)V
    .locals 1

    .line 10
    new-instance v0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v0}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/teleal/cling/model/meta/StateVariable;->b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iput-object p3, p0, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariable;->b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a:Lorg/teleal/cling/model/types/Datatype;

    invoke-interface {v0}, Lorg/teleal/cling/model/types/Datatype;->d()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI1:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI2:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->I1:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->I2:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->I4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->INT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget p0, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->c:I

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p0, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI1:Lorg/teleal/cling/model/types/Datatype$Builtin;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/StateVariable;->b:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a:Lorg/teleal/cling/model/types/Datatype;

    iget-object v3, v1, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->b:Ljava/lang/String;

    invoke-interface {v2}, Lorg/teleal/cling/model/types/Datatype;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget-boolean p0, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->a:Z

    if-nez p0, :cond_0

    const-string p0, " (No Events)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    const-string p0, " Default Value: \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, " Allowed Values: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
