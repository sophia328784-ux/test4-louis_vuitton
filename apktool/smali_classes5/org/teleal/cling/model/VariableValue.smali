.class public Lorg/teleal/cling/model/VariableValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/teleal/cling/model/types/Datatype;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/VariableValue;->a:Lorg/teleal/cling/model/types/Datatype;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/teleal/cling/model/types/Datatype;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    sget-boolean v0, Lorg/teleal/cling/model/ModelUtil;->a:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2}, Lorg/teleal/cling/model/types/Datatype;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    const v1, 0xd7ff

    if-le v0, v1, :cond_5

    :cond_2
    const v1, 0xe000

    if-lt v0, v1, :cond_3

    const v1, 0xfffd

    if-le v0, v1, :cond_5

    :cond_3
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_4

    const v1, 0x10ffff

    if-gt v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/teleal/cling/model/types/InvalidValueException;

    iget-object p0, p0, Lorg/teleal/cling/model/VariableValue;->a:Lorg/teleal/cling/model/types/Datatype;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid characters in string value (XML 1.0, section 2.2) produced by "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/model/VariableValue;->a:Lorg/teleal/cling/model/types/Datatype;

    iget-object p0, p0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lorg/teleal/cling/model/types/Datatype;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
