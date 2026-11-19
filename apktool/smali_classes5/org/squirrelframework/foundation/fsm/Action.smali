.class public interface abstract Lorg/squirrelframework/foundation/fsm/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;


# annotations
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
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/component/SquirrelComponent;"
    }
.end annotation


# static fields
.field public static final AFTER_WEIGHT:I = -0x64

.field public static final BEFORE_WEIGHT:I = 0x64

.field public static final DUMMY_ACTION:Lorg/squirrelframework/foundation/fsm/Action;

.field public static final EXTENSION_WEIGHT:I = -0xa

.field public static final IGNORE_WEIGHT:I = -0x80000000

.field public static final MAX_WEIGHT:I = 0x7ffffffe

.field public static final MIN_WEIGHT:I = -0x7fffffff

.field public static final NORMAL_WEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/fsm/Action$1;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/Action$1;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/fsm/Action;->DUMMY_ACTION:Lorg/squirrelframework/foundation/fsm/Action;

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation
.end method

.method public abstract isAsync()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract timeout()J
.end method

.method public abstract weight()I
.end method
