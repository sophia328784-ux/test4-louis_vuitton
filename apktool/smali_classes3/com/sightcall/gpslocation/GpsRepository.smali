.class public interface abstract Lcom/sightcall/gpslocation/GpsRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0011\u001a\u00020\u0012H&R(\u0010\u0002\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u00070\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0012\u0010\u0010\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0013\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/GpsRepository;",
        "",
        "locations",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/sightcall/pratik/Result;",
        "Landroid/location/Location;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "getLocations",
        "()Lkotlinx/coroutines/flow/Flow;",
        "hasGpsFeature",
        "",
        "getHasGpsFeature",
        "()Z",
        "hasPermissions",
        "getHasPermissions",
        "isGpsEnabled",
        "stopGPS",
        "",
        "GpsLocation_release"
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
.method public abstract getHasGpsFeature()Z
.end method

.method public abstract getHasPermissions()Z
.end method

.method public abstract getLocations()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/sightcall/pratik/Result<",
            "Landroid/location/Location;",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isGpsEnabled()Z
.end method

.method public abstract stopGPS()V
.end method
