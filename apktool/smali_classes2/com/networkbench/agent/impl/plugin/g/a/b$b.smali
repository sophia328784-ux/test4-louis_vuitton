.class public Lcom/networkbench/agent/impl/plugin/g/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/g/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->a:I

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->b:I

    iput-object p3, p0, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->c:[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    iput-object p4, p0, Lcom/networkbench/agent/impl/plugin/g/a/b$b;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/b$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/plugin/g/a/b$b;-><init>(II[Lcom/networkbench/agent/impl/plugin/g/a/a/c;Ljava/lang/String;)V

    return-void
.end method
