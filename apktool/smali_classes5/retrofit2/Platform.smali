.class abstract Lretrofit2/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Lretrofit2/Reflection;

.field public static final c:Lretrofit2/BuiltInFactories;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "RoboVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v2, Lretrofit2/Platform;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/Reflection$Java8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lretrofit2/Platform;->b:Lretrofit2/Reflection;

    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lretrofit2/Platform;->c:Lretrofit2/BuiltInFactories;

    return-void

    :cond_0
    new-instance v0, Lretrofit2/AndroidMainExecutor;

    invoke-direct {v0}, Lretrofit2/AndroidMainExecutor;-><init>()V

    sput-object v0, Lretrofit2/Platform;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/Reflection$Android24;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lretrofit2/Platform;->b:Lretrofit2/Reflection;

    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lretrofit2/Platform;->c:Lretrofit2/BuiltInFactories;

    return-void

    :cond_1
    sput-object v2, Lretrofit2/Platform;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/Reflection;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lretrofit2/Platform;->b:Lretrofit2/Reflection;

    new-instance v0, Lretrofit2/BuiltInFactories;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lretrofit2/Platform;->c:Lretrofit2/BuiltInFactories;

    return-void
.end method
