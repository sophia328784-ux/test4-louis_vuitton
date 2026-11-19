.class Lcom/sightcall/universal/api/TimeoutInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeoutInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lretrofit2/Invocation;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request;->a(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Invocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lretrofit2/Invocation;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-class v2, Lcom/sightcall/universal/api/Timeout;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sightcall/universal/api/Timeout;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    const-class v3, Lcom/sightcall/universal/api/Timeout$Connect;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/api/Timeout$Connect;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/sightcall/universal/api/Timeout$Connect;->value()I

    move-result v4

    invoke-interface {v3}, Lcom/sightcall/universal/api/Timeout$Connect;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lokhttp3/Interceptor$Chain;->a(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p1

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->connect()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->connect()I

    move-result v3

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lokhttp3/Interceptor$Chain;->a(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p1

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    const-class v3, Lcom/sightcall/universal/api/Timeout$Write;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/api/Timeout$Write;

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/sightcall/universal/api/Timeout$Write;->value()I

    move-result v4

    invoke-interface {v3}, Lcom/sightcall/universal/api/Timeout$Write;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lokhttp3/Interceptor$Chain;->c(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p1

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->write()I

    move-result v3

    if-ltz v3, :cond_7

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->write()I

    move-result v3

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lokhttp3/Interceptor$Chain;->c(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p1

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    const-class v1, Lcom/sightcall/universal/api/Timeout$Read;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sightcall/universal/api/Timeout$Read;

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/sightcall/universal/api/Timeout$Read;->value()I

    move-result v0

    invoke-interface {v1}, Lcom/sightcall/universal/api/Timeout$Read;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lokhttp3/Interceptor$Chain;->e(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p1

    goto :goto_6

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->read()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->read()I

    move-result v0

    invoke-interface {v2}, Lcom/sightcall/universal/api/Timeout;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lokhttp3/Interceptor$Chain;->e(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
