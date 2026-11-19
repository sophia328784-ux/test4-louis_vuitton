.class Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/util/ReflectUtils$MethodFilter;


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


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$2;->this$0:Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/reflect/Method;)Z
    .locals 0

    const-class p0, Ljavax/annotation/PostConstruct;

    invoke-static {p1, p0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->isAnnotatedWith(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
