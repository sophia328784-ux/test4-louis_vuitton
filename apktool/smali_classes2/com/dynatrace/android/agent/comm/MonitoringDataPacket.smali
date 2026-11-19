.class public Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->b:Ljava/util/List;

    return-void
.end method
