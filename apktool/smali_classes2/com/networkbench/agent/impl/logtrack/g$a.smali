.class Lcom/networkbench/agent/impl/logtrack/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/logtrack/g;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/logtrack/g;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/g$a;->a:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loganProtocolStatus(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/logtrack/Logan;->a(Ljava/lang/String;I)V

    return-void
.end method
