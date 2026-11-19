.class public abstract Lcom/dynatrace/android/agent/events/eventsapi/EventPayloadUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\"dt.send_timestamp\":"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/events/eventsapi/EventPayloadUtility;->a:Ljava/lang/String;

    return-void
.end method
