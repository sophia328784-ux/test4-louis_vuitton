.class public Lcom/dynatrace/android/agent/events/lifecycle/AppStartActionObserverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegmentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegmentFactory;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegmentFactory;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartActionObserverImpl;->a:Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegmentFactory;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;)V
    .locals 9

    iget-object v0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/conf/Configuration;->j:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/DTXAutoAction;->z()V

    :cond_1
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartActionObserverImpl;->a:Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegmentFactory;

    iget-object v1, v0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-object v2, v1, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v1, v1, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-wide v3, v2, Lcom/dynatrace/android/agent/data/Session;->a:J

    iget-object p0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->b:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object v5, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->a:Ljava/lang/String;

    iget-wide v6, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    new-instance v8, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    sub-long v3, v6, v3

    iget p0, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-direct {v8, v3, v4, p0}, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;-><init>(JI)V

    const/4 p0, 0x0

    if-eqz v5, :cond_2

    new-instance v3, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;

    invoke-direct {v3}, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;-><init>()V

    invoke-virtual {v3, v5}, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_0
    new-instance v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;

    invoke-direct {v4}, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;-><init>()V

    iput-object v3, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->a:Ljava/lang/String;

    iput-object v2, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->b:Lcom/dynatrace/android/agent/data/Session;

    iput v1, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->c:I

    iget-object v1, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->c:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-wide v1, v1, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->d:J

    sget-object v1, Lcom/dynatrace/android/agent/EventType;->APP_START:Lcom/dynatrace/android/agent/EventType;

    iput-object v1, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->e:Lcom/dynatrace/android/agent/EventType;

    iput-object v8, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->f:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object v1, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->d:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-wide v2, v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    sub-long/2addr v2, v6

    iget v1, v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-direct {p0, v2, v3, v1}, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;-><init>(JI)V

    :goto_2
    iput-object p0, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    const/4 p0, 0x1

    iput-boolean p0, v4, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->h:Z

    new-instance p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;

    invoke-direct {p0, v4}, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;-><init>(Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;)V

    sget-object v1, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    iget v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {p0, v1}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    :cond_5
    iget-object p0, p1, Lcom/dynatrace/android/lifecycle/appstart/AppStartAction;->e:Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    sget-object p1, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p1, p0}, Lcom/dynatrace/android/agent/CalloutTable;->e(Lcom/dynatrace/android/agent/CustomSegment;)V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->a()V

    invoke-virtual {v0}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->c()V

    return-void

    :cond_6
    :goto_3
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method
