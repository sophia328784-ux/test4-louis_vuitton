.class public Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceInitializationResult"
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->a:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iput-object p2, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynatrace/android/agent/mixed/WebRequestTraceContextInitializer$TraceInitializationResult;->c:Ljava/lang/String;

    return-void
.end method
