.class public abstract Lkotlin/time/InstantJvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->a:Lkotlin/internal/jdk8/JDK8PlatformImplementations;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    return-void
.end method
