.class public Lcom/sightcall/universal/internal/model/GpsRequest$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/GpsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field private final location:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest$Event;->location:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sightcall/universal/internal/model/GpsRequest$Event;->location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public location()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/GpsRequest$Event;->location:Landroid/location/Location;

    return-object p0
.end method
