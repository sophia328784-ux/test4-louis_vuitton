.class public final Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;
.super Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirstUsagePopupAccepted"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;",
        "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;",
        "<init>",
        "()V",
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


# static fields
.field public static final INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-direct {v0}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;-><init>()V

    sput-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "firstUsagePopupAccepted"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
