.class public Lcom/networkbench/agent/impl/plugin/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/logtrack/SendLogCallback;


# static fields
.field private static final a:Ljava/lang/String; = "LogTrackSendLogCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogSendCompleted(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "log send statusCode:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result data is:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogTrackSendLogCallback"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
