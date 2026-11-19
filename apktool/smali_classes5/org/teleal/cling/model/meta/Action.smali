.class public Lorg/teleal/cling/model/meta/Action;
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

.field public final b:[Lorg/teleal/cling/model/meta/ActionArgument;

.field public final c:[Lorg/teleal/cling/model/meta/ActionArgument;

.field public final d:[Lorg/teleal/cling/model/meta/ActionArgument;

.field public e:Lorg/teleal/cling/model/meta/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_0
    if-ge p1, v2, :cond_3

    aget-object v3, p2, p1

    iget-object v4, v3, Lorg/teleal/cling/model/meta/ActionArgument;->f:Lorg/teleal/cling/model/meta/Action;

    iget-object v5, v3, Lorg/teleal/cling/model/meta/ActionArgument;->d:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    if-nez v4, :cond_2

    iput-object p0, v3, Lorg/teleal/cling/model/meta/ActionArgument;->f:Lorg/teleal/cling/model/meta/Action;

    sget-object v4, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->IN:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v4, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Final value has been set already, model is immutable"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    iput-object p2, p0, Lorg/teleal/cling/model/meta/Action;->b:[Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->c:[Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->d:[Lorg/teleal/cling/model/meta/ActionArgument;

    return-void

    :cond_4
    new-array p2, p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object p2, p0, Lorg/teleal/cling/model/meta/Action;->b:[Lorg/teleal/cling/model/meta/ActionArgument;

    new-array p2, p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object p2, p0, Lorg/teleal/cling/model/meta/Action;->c:[Lorg/teleal/cling/model/meta/ActionArgument;

    new-array p1, p1, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->d:[Lorg/teleal/cling/model/meta/ActionArgument;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Action;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Action;->b:[Lorg/teleal/cling/model/meta/ActionArgument;

    if-eqz v1, :cond_0

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "NO ARGS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
