.class public Lcom/sightcall/universal/ar/ArTracking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ar/ArTracking$Reason;
    }
.end annotation


# instance fields
.field public final reason:Lcom/sightcall/universal/ar/ArTracking$Reason;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reason"
    .end annotation
.end field

.field public final tracking:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "tracking"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/sightcall/universal/ar/ArTracking$Reason;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/ar/ArTracking;->tracking:Z

    iput-object p2, p0, Lcom/sightcall/universal/ar/ArTracking;->reason:Lcom/sightcall/universal/ar/ArTracking$Reason;

    return-void
.end method
