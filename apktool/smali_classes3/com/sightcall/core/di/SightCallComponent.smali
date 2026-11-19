.class public interface abstract Lcom/sightcall/core/di/SightCallComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sightcall/core/di/AppScope;
.end annotation

.annotation runtime Ldagger/Component;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/core/di/SightCallComponent$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001:\u0001\u0006J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/core/di/SightCallComponent;",
        "",
        "context",
        "Landroid/content/Context;",
        "sightcallActivityLifecycleCallbacks",
        "Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;",
        "Factory",
        "core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract context()Landroid/content/Context;
.end method

.method public abstract sightcallActivityLifecycleCallbacks()Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;
.end method
