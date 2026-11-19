.class final Lorg/squirrelframework/foundation/fsm/Conditions$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/Conditions;->not(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/Condition<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic val$condition:Lorg/squirrelframework/foundation/fsm/Condition;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/Condition;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/Conditions$5;->val$condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfied(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/Conditions$5;->val$condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Condition;->isSatisfied(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/Conditions$5;->val$condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Condition;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
