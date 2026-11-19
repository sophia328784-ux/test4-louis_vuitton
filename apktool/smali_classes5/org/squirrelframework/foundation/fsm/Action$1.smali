.class final Lorg/squirrelframework/foundation/fsm/Action$1;
.super Lorg/squirrelframework/foundation/fsm/AnonymousAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/AnonymousAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "__DUMMY_ACTION"

    return-object p0
.end method
