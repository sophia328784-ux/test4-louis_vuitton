.class Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->addDeclarativeListener(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$6;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$6;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 1

    const-class p0, Lorg/squirrelframework/foundation/fsm/annotation/ListenerOrder;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/annotation/ListenerOrder;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/annotation/ListenerOrder;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ListenerOrder;->value()I

    move-result p1

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/annotation/ListenerOrder;->value()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
