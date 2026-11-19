.class public final Lcom/sightcall/mediacapture/di/InjectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0006\u001a\u00020\u0002H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "mediaCaptureComponentReference",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/sightcall/mediacapture/di/MediaCaptureComponent;",
        "mediaCaptureComponent",
        "getMediaCaptureComponent",
        "()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;",
        "newMediaCaptureComponentInstance",
        "inject",
        "",
        "mediaCaptureFragment",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;",
        "lib_release"
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
.field private static mediaCaptureComponentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/mediacapture/di/MediaCaptureComponent;",
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

    sput-object v0, Lcom/sightcall/mediacapture/di/InjectorKt;->mediaCaptureComponentReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static final getMediaCaptureComponent()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;
    .locals 2

    sget-object v0, Lcom/sightcall/mediacapture/di/InjectorKt;->mediaCaptureComponentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/mediacapture/di/MediaCaptureComponent;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sightcall/mediacapture/di/InjectorKt;->newMediaCaptureComponentInstance()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/sightcall/mediacapture/di/InjectorKt;->mediaCaptureComponentReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object v0
.end method

.method public static final inject(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/mediacapture/di/InjectorKt;->getMediaCaptureComponent()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/mediacapture/di/MediaCaptureComponent;->inject(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)V

    return-void
.end method

.method private static final newMediaCaptureComponentInstance()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;
    .locals 2

    invoke-static {}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent;->builder()Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/getmedia/di/MediaComponentKt;->getMediaComponent()Lcom/sightcall/getmedia/di/MediaComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->mediaComponent(Lcom/sightcall/getmedia/di/MediaComponent;)Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->build()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
