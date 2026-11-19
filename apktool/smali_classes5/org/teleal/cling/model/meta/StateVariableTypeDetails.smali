.class public Lorg/teleal/cling/model/meta/StateVariableTypeDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# instance fields
.field public final a:Lorg/teleal/cling/model/types/Datatype;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->a:Lorg/teleal/cling/model/types/Datatype;

    iput-object p2, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->c:[Ljava/lang/String;

    iput-object p4, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->d:Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->b:Ljava/lang/String;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_3
    :goto_1
    return-object p0
.end method
