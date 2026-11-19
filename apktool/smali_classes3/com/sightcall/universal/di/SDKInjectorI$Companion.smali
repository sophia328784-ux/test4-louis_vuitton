.class public final Lcom/sightcall/universal/di/SDKInjectorI$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/SDKInjectorI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/universal/di/SDKInjectorI$Companion;",
        "",
        "<init>",
        "()V",
        "internalInjector",
        "Lcom/sightcall/universal/di/SDKInjectorI;",
        "create",
        "sdkComponent",
        "Lcom/sightcall/universal/di/SdkComponent;",
        "injector",
        "getInjector",
        "()Lcom/sightcall/universal/di/SDKInjectorI;",
        "sdk_installedRelease"
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
.field static final synthetic $$INSTANCE:Lcom/sightcall/universal/di/SDKInjectorI$Companion;

.field private static internalInjector:Lcom/sightcall/universal/di/SDKInjectorI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/di/SDKInjectorI$Companion;

    invoke-direct {v0}, Lcom/sightcall/universal/di/SDKInjectorI$Companion;-><init>()V

    sput-object v0, Lcom/sightcall/universal/di/SDKInjectorI$Companion;->$$INSTANCE:Lcom/sightcall/universal/di/SDKInjectorI$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/sightcall/universal/di/SdkComponent;)Lcom/sightcall/universal/di/SDKInjectorI;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/di/SDKInjectorImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/SDKInjectorImpl;-><init>(Lcom/sightcall/universal/di/SdkComponent;)V

    sput-object p0, Lcom/sightcall/universal/di/SDKInjectorI$Companion;->internalInjector:Lcom/sightcall/universal/di/SDKInjectorI;

    return-object p0
.end method

.method public final getInjector()Lcom/sightcall/universal/di/SDKInjectorI;
    .locals 0

    sget-object p0, Lcom/sightcall/universal/di/SDKInjectorI$Companion;->internalInjector:Lcom/sightcall/universal/di/SDKInjectorI;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "internalInjector"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
