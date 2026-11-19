.class public Lorg/squirrelframework/foundation/component/IdProvider$UUIDProvider;
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
    name = "UUIDProvider"
.end annotation


# static fields
.field private static instance:Lorg/squirrelframework/foundation/component/IdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/component/IdProvider$UUIDProvider;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/component/IdProvider$UUIDProvider;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/component/IdProvider$UUIDProvider;->instance:Lorg/squirrelframework/foundation/component/IdProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/squirrelframework/foundation/component/IdProvider;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/component/IdProvider$UUIDProvider;->instance:Lorg/squirrelframework/foundation/component/IdProvider;

    return-object v0
.end method

.method public static setInstance(Lorg/squirrelframework/foundation/component/IdProvider;)V
    .locals 0

    sput-object p0, Lorg/squirrelframework/foundation/component/IdProvider$UUIDProvider;->instance:Lorg/squirrelframework/foundation/component/IdProvider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
