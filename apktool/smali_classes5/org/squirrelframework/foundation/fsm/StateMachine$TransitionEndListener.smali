.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionEndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/squirrelframework/foundation/fsm/StateMachine<",
        "TT;TS;TE;TC;>;S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/reflect/Method;

.field public static final METHOD_NAME:Ljava/lang/String; = "transitionEnd"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;

    const-string v2, "transitionEnd"

    invoke-static {v1, v2, v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;->METHOD:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public abstract transitionEnd(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method
