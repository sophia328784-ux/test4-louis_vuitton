.class public final Lcom/networkbench/agent/impl/performance/a/b/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/a/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/networkbench/agent/impl/performance/a/b/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/b/e;-><init>(Lcom/networkbench/agent/impl/performance/a/b/b/e$1;)V

    sput-object v0, Lcom/networkbench/agent/impl/performance/a/b/b/e$a;->a:Lcom/networkbench/agent/impl/performance/a/b/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/performance/a/b/b/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/performance/a/b/b/e$a;->a:Lcom/networkbench/agent/impl/performance/a/b/b/e;

    return-object v0
.end method
