.class public Lcom/networkbench/agent/impl/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/c/k;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/c/k;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/c/f;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/c/f;->a:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method
