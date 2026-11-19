.class public final Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;",
        "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;",
        "Landroidx/room/RoomDatabase;",
        "__db",
        "<init>",
        "(Landroidx/room/RoomDatabase;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$1;

.field public final c:Lcom/vuitton/android/data/database/converter/EnumConverter;

.field public final d:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vuitton/android/data/database/converter/EnumConverter;

    invoke-direct {v0}, Lcom/vuitton/android/data/database/converter/EnumConverter;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->c:Lcom/vuitton/android/data/database/converter/EnumConverter;

    iput-object p1, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$1;-><init>(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;)V

    iput-object p1, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->b:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$1;

    new-instance p1, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$2;

    invoke-direct {p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    new-instance p1, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;

    invoke-direct {p1, p0}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;-><init>(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;)V

    iput-object p1, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->d:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lk60;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, v0, p2}, Landroidx/room/util/DBUtil;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lw90;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lw90;-><init>(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;I)V

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final c(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lw90;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lw90;-><init>(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;I)V

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v0, p2}, Landroidx/room/util/DBUtil;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Llt;

    const/16 v1, 0x14

    invoke-direct {v0, p1, v1}, Llt;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ll00;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0, p1}, Landroidx/room/util/DBUtil;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
