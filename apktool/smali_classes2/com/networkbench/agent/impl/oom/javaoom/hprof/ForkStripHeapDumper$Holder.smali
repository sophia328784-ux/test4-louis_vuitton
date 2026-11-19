.class Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;-><init>(Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$1;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$Holder;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper$Holder;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/hprof/ForkStripHeapDumper;

    return-object v0
.end method
