.class public interface abstract Lcom/sightcall/gpslocation/datasource/GpsDatasource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/gpslocation/datasource/GpsDatasource$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u00052\u0018\u0008\u0002\u0010\u0007\u001a\u0012\u0012\u0008\u0012\u00060\u0008j\u0002`\t\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u000cH&J\u0008\u0010\u000e\u001a\u00020\u000cH&\u00a8\u0006\u000f\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/datasource/GpsDatasource;",
        "",
        "startGps",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Landroid/location/Location;",
        "failure",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "stopGps",
        "hasGpsFeature",
        "",
        "checkPermission",
        "isGPSEnabled",
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


# direct methods
.method public static synthetic a(Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->startGps$lambda$0(Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic startGps$default(Lcom/sightcall/gpslocation/datasource/GpsDatasource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Ldy;

    const/16 p3, 0x13

    invoke-direct {p2, p3}, Ldy;-><init>(I)V

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->startGps(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: startGps"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static startGps$lambda$0(Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract checkPermission()Z
.end method

.method public abstract hasGpsFeature()Z
.end method

.method public abstract isGPSEnabled()Z
.end method

.method public abstract startGps(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/location/Location;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopGps()V
.end method
