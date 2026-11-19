.class Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/util/ReflectUtils$MethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;->postProcess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;

.field final synthetic val$component:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$1;->this$0:Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;

    iput-object p2, p0, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$1;->val$component:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWith(Ljava/lang/reflect/Method;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$1;->val$component:Ljava/lang/Object;

    invoke-static {p1, p0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
