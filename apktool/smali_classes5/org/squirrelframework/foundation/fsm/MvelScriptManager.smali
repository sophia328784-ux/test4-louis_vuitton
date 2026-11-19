.class public interface abstract Lorg/squirrelframework/foundation/fsm/MvelScriptManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEPARATOR_CHARS:Ljava/lang/String; = ":::"

.field public static final VAR_CONTEXT:Ljava/lang/String; = "context"

.field public static final VAR_EVENT:Ljava/lang/String; = "event"

.field public static final VAR_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final VAR_FROM:Ljava/lang/String; = "from"

.field public static final VAR_STATE_MACHINE:Ljava/lang/String; = "stateMachine"

.field public static final VAR_TO:Ljava/lang/String; = "to"


# virtual methods
.method public abstract compile(Ljava/lang/String;)V
.end method

.method public abstract eval(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract evalBoolean(Ljava/lang/String;Ljava/lang/Object;)Z
.end method
