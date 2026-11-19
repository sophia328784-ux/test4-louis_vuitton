.class public Lcom/networkbench/agent/impl/b/b;
.super Lcom/networkbench/agent/impl/b/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/b/b$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private c:Lcom/networkbench/agent/impl/b/g;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/b;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/h$a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/b;->d:Z

    new-instance v0, Lcom/networkbench/agent/impl/b/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/b/c;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/b;->c:Lcom/networkbench/agent/impl/b/g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/b/b$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/b/b;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/b/b$a;->a:Lcom/networkbench/agent/impl/b/b;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/networkbench/agent/impl/b/g;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/b;->c:Lcom/networkbench/agent/impl/b/g;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/b/b;->d:Z

    return p0
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/networkbench/agent/impl/b/h$a;->d()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/b;->c:Lcom/networkbench/agent/impl/b/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/networkbench/agent/impl/b/g;->a(J)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/b/h$a;->e()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/b;->c:Lcom/networkbench/agent/impl/b/g;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/b/g;->b()V

    return-void
.end method
