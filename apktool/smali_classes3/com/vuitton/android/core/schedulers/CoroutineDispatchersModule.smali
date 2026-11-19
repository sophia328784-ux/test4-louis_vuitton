.class public final Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;",
        "",
        "<init>",
        "()V",
        "Companion",
        "core"
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
.field public static final a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;

.field public static final b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;

    new-instance v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;

    invoke-direct {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;-><init>()V

    sput-object v0, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
