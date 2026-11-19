.class public final Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;
.super Lcom/dynatrace/agent/useraction/SignificantEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/useraction/SignificantEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;",
        "Lcom/dynatrace/agent/useraction/SignificantEvent;",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/useraction/SignificantEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;->a:Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "WebRequest"

    return-object p0
.end method
