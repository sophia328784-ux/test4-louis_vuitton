.class Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/background/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4;->a:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4$1;-><init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applicationForegrounded  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
