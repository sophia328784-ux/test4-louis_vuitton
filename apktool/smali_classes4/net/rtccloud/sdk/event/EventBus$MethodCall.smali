.class public final Lnet/rtccloud/sdk/event/EventBus$MethodCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodCall"
.end annotation


# instance fields
.field private final hashCode:I

.field private final method:Ljava/lang/reflect/Method;

.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final thread:Lnet/rtccloud/sdk/event/Event$Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->reference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->method:Ljava/lang/reflect/Method;

    const-class v0, Lnet/rtccloud/sdk/event/Event;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/event/Event;

    invoke-interface {v0}, Lnet/rtccloud/sdk/event/Event;->thread()Lnet/rtccloud/sdk/event/Event$Thread;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->thread:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p2

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->hashCode:I

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->reference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Lnet/rtccloud/sdk/event/Event$Thread;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->thread:Lnet/rtccloud/sdk/event/Event$Thread;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    iget-object v2, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p1, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->method:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->thread:Lnet/rtccloud/sdk/event/Event$Thread;

    iget-object p1, p1, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->thread:Lnet/rtccloud/sdk/event/Event$Thread;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->hashCode:I

    return p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/event/EventBus;->b()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unable to invoke [%s], the target was GC\'ed..."

    invoke-virtual {p1, v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->method:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
