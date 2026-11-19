.class public Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/ragetap/detection/RageTapListener;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/events/ragetap/RageTapSegmentFactory;

.field public final b:Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegmentFactory;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegmentFactory;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;->a:Lcom/dynatrace/android/agent/events/ragetap/RageTapSegmentFactory;

    new-instance v0, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;

    invoke-direct {v0}, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;->b:Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/ragetap/detection/RageTap;Z)V
    .locals 10

    iget-object v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTap;->a:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->s:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;->b:Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;

    invoke-virtual {v2, v1}, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    xor-int/2addr p2, v2

    iget-object v3, v0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v3, v3, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    invoke-static {v3, v4, p2}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object p2

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v3, v3, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    iget-object p0, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;->a:Lcom/dynatrace/android/agent/events/ragetap/RageTapSegmentFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p2, Lcom/dynatrace/android/agent/data/Session;->a:J

    iget-object p0, v0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v6, p0, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    sub-long/2addr v6, v4

    iget-object p0, p1, Lcom/dynatrace/android/ragetap/detection/RageTap;->b:Lcom/dynatrace/android/ragetap/detection/TapData;

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v8, p0, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    sub-long/2addr v8, v6

    sub-long/2addr v8, v4

    sget-object p0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    new-instance v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;-><init>()V

    iput-object v1, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->g:Lcom/dynatrace/android/agent/data/Session;

    iput v3, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->e:I

    iput p0, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->f:I

    iput-wide v6, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->b:J

    iput-wide v8, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->c:J

    iget p0, p1, Lcom/dynatrace/android/ragetap/detection/RageTap;->c:I

    iput p0, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->d:I

    iput-boolean v2, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->h:Z

    new-instance p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;

    invoke-direct {p0, v0}, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;-><init>(Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;)V

    sget-object p1, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    iget p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {p0, p1}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    :cond_1
    return-void
.end method
