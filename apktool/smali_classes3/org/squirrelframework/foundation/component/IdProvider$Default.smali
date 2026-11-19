.class public Lorg/squirrelframework/foundation/component/IdProvider$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/IdProvider;
.implements Lorg/squirrelframework/foundation/component/SquirrelSingleton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/component/IdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field private static instance:Lorg/squirrelframework/foundation/component/IdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/component/IdProvider$Default;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/component/IdProvider$Default;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/component/IdProvider$Default;->instance:Lorg/squirrelframework/foundation/component/IdProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/squirrelframework/foundation/component/IdProvider;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/component/IdProvider$Default;->instance:Lorg/squirrelframework/foundation/component/IdProvider;

    return-object v0
.end method

.method public static setInstance(Lorg/squirrelframework/foundation/component/IdProvider;)V
    .locals 0

    sput-object p0, Lorg/squirrelframework/foundation/component/IdProvider$Default;->instance:Lorg/squirrelframework/foundation/component/IdProvider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    sget-object p0, Lorg/apache/commons/lang3/RandomStringUtils;->c:Lorg/apache/commons/lang3/RandomStringUtils;

    iget-object p0, p0, Lorg/apache/commons/lang3/RandomStringUtils;->a:Lsg0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lorg/apache/commons/lang3/RandomUtils;->b:Lorg/apache/commons/lang3/RandomUtils;

    iget-object p0, p0, Lorg/apache/commons/lang3/RandomUtils;->a:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Random;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v0, v1, p0}, Lorg/apache/commons/lang3/RandomStringUtils;->a(ZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
