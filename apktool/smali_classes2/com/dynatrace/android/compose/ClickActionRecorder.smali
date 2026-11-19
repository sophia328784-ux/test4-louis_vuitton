.class public final Lcom/dynatrace/android/compose/ClickActionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/android/compose/ClickActionRecorder;",
        "",
        "Lcom/dynatrace/android/agent/measurement/MeasurementProvider;",
        "measurementProvider",
        "Lcom/dynatrace/android/useraction/UserActionFactory;",
        "userActionFactory",
        "Lcom/dynatrace/android/compose/ClickableInfo;",
        "clickableInfo",
        "",
        "semanticsName",
        "<init>",
        "(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ClickableInfo;Ljava/lang/String;)V",
        "agent.instrumentorAPI.compose_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

.field public final b:Lcom/dynatrace/android/useraction/UserActionFactory;

.field public final c:Lcom/dynatrace/android/compose/ClickableInfo;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ClickableInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    iput-object p2, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->b:Lcom/dynatrace/android/useraction/UserActionFactory;

    iput-object p3, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->c:Lcom/dynatrace/android/compose/ClickableInfo;

    iput-object p4, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->d:Ljava/lang/String;

    return-void
.end method
