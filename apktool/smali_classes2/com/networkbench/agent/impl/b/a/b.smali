.class public Lcom/networkbench/agent/impl/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/StackTraceElement;

.field private b:J


# direct methods
.method public constructor <init>(J[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/b/a/b;->b:J

    iput-object p3, p0, Lcom/networkbench/agent/impl/b/a/b;->a:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/StackTraceElement;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a/b;->a:[Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/b/a/b;->b:J

    return-wide v0
.end method
