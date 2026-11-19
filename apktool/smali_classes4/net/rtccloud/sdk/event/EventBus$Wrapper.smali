.class final Lnet/rtccloud/sdk/event/EventBus$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation


# static fields
.field private static final POOL:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/rtccloud/sdk/util/Pools$SynchronizedPool<",
            "Lnet/rtccloud/sdk/event/EventBus$Wrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lnet/rtccloud/sdk/event/EventBus$MethodCall;

.field private event:Ljava/lang/Object;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->POOL:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->call:Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    iput-object p2, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->event:Ljava/lang/Object;

    iput-wide p3, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->timestamp:J

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)Lnet/rtccloud/sdk/event/EventBus$MethodCall;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->call:Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    return-object p0
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)J
    .locals 2

    iget-wide v0, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->timestamp:J

    return-wide v0
.end method

.method public static obtain(Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;)Lnet/rtccloud/sdk/event/EventBus$Wrapper;
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->POOL:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/rtccloud/sdk/event/EventBus$Wrapper;

    if-eqz v2, :cond_0

    iput-object p0, v2, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->call:Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    iput-object p1, v2, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->event:Ljava/lang/Object;

    iput-wide v0, v2, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->timestamp:J

    return-object v2

    :cond_0
    new-instance v2, Lnet/rtccloud/sdk/event/EventBus$Wrapper;

    invoke-direct {v2, p0, p1, v0, v1}, Lnet/rtccloud/sdk/event/EventBus$Wrapper;-><init>(Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;J)V

    return-object v2
.end method


# virtual methods
.method public recycle()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->POOL:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->call:Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->event:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->timestamp:J

    return-void
.end method
