.class Lorg/squirrelframework/foundation/event/ListenerMethod$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/event/ListenerMethod;->invokeMethod(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/event/ListenerMethod;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/event/ListenerMethod;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod$1;->this$0:Lorg/squirrelframework/foundation/event/ListenerMethod;

    iput-object p2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod$1;->this$0:Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-static {v0}, Lorg/squirrelframework/foundation/event/ListenerMethod;->access$000(Lorg/squirrelframework/foundation/event/ListenerMethod;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod$1;->this$0:Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-static {v1}, Lorg/squirrelframework/foundation/event/ListenerMethod;->access$100(Lorg/squirrelframework/foundation/event/ListenerMethod;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod$1;->this$0:Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-static {v2}, Lorg/squirrelframework/foundation/event/ListenerMethod;->access$200(Lorg/squirrelframework/foundation/event/ListenerMethod;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod$1;->val$event:Ljava/lang/Object;

    aput-object p0, v2, v3

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
