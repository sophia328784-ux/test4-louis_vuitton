.class public Lorg/squirrelframework/foundation/fsm/Conditions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/Conditions$Never;,
        Lorg/squirrelframework/foundation/fsm/Conditions$Always;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static always()Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$Always;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/Conditions$Always;-><init>()V

    return-object v0
.end method

.method public static and(Ljava/util/List;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;>;)",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$2;

    invoke-direct {v0, p0}, Lorg/squirrelframework/foundation/fsm/Conditions$2;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static and(Lorg/squirrelframework/foundation/fsm/Condition;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$1;

    invoke-direct {v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/Conditions$1;-><init>(Lorg/squirrelframework/foundation/fsm/Condition;Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object v0
.end method

.method public static isNotSatified(Lorg/squirrelframework/foundation/fsm/Condition;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;TC;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Condition;->isSatisfied(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSatified(Lorg/squirrelframework/foundation/fsm/Condition;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;TC;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Condition;->isSatisfied(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static never()Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$Never;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/Conditions$Never;-><init>()V

    return-object v0
.end method

.method public static not(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$5;

    invoke-direct {v0, p0}, Lorg/squirrelframework/foundation/fsm/Conditions$5;-><init>(Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;>;)",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$4;

    invoke-direct {v0, p0}, Lorg/squirrelframework/foundation/fsm/Conditions$4;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static or(Lorg/squirrelframework/foundation/fsm/Condition;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$3;

    invoke-direct {v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/Conditions$3;-><init>(Lorg/squirrelframework/foundation/fsm/Condition;Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object v0
.end method

.method public static xor(Lorg/squirrelframework/foundation/fsm/Condition;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Conditions$6;

    invoke-direct {v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/Conditions$6;-><init>(Lorg/squirrelframework/foundation/fsm/Condition;Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object v0
.end method
