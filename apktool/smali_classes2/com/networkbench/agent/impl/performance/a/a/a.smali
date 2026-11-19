.class public Lcom/networkbench/agent/impl/performance/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/networkbench/agent/impl/performance/a/a/a;


# instance fields
.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/a/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/a/a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/performance/a/a/a;->a:Lcom/networkbench/agent/impl/performance/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/performance/a/a/a;->b:F

    return-void
.end method
