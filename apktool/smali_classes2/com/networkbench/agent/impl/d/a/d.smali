.class public Lcom/networkbench/agent/impl/d/a/d;
.super Lcom/networkbench/agent/impl/harvest/HarvestAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/d/a/c;


# static fields
.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private final a:Lcom/networkbench/agent/impl/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/a/d;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestAdapter;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/a/d;->a:Lcom/networkbench/agent/impl/d/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/d/a;)V
    .locals 0

    return-void
.end method

.method public b()Lcom/networkbench/agent/impl/d/f;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/a/d;->a:Lcom/networkbench/agent/impl/d/f;

    return-object p0
.end method
