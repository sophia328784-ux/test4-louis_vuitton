.class public final Lnet/rtccloud/sdk/di/InjectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "rtccComponentReference",
        "Ljava/lang/ref/WeakReference;",
        "Lnet/rtccloud/sdk/di/RtccComponent;",
        "rtccComponent",
        "getRtccComponent",
        "()Lnet/rtccloud/sdk/di/RtccComponent;",
        "rtcc_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static rtccComponentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/di/RtccComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnet/rtccloud/sdk/di/InjectorKt;->rtccComponentReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final getRtccComponent()Lnet/rtccloud/sdk/di/RtccComponent;
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/di/InjectorKt;->rtccComponentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/di/RtccComponent;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/di/DaggerRtccComponent;->builder()Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;->sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;->build()Lnet/rtccloud/sdk/di/RtccComponent;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/rtccloud/sdk/di/InjectorKt;->rtccComponentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-object v0
.end method
