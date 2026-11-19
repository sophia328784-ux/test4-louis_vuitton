.class public Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/dynatrace/android/agent/data/Session;

.field public c:I

.field public d:J

.field public e:Lcom/dynatrace/android/agent/EventType;

.field public f:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
