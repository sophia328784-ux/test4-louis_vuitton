.class public Lcom/networkbench/agent/impl/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/networkbench/agent/impl/c/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/c/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/c/a;->a:Lcom/networkbench/agent/impl/c/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v0}, Lcom/networkbench/agent/impl/c/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/c/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/c/a;->c:Ljava/lang/Throwable;

    if-nez p3, :cond_0

    iput-object p2, p0, Lcom/networkbench/agent/impl/c/a;->d:[Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/c/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/c/a;->d:[Ljava/lang/Object;

    return-void
.end method

.method public static a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const-string p0, "non-sensical empty or null argument array"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/networkbench/agent/impl/c/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/c/a;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method public c()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/c/a;->c:Ljava/lang/Throwable;

    return-object p0
.end method
