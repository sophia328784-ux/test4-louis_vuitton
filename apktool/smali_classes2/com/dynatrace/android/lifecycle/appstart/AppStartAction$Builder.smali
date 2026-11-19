.class public Lcom/dynatrace/android/lifecycle/appstart/AppStartAction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public c:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public d:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

.field public e:Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
