.class public final Lcom/networkbench/agent/impl/plugin/g/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/g/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->a:I

    iput-object p3, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->c:I

    iput p5, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->d:I

    iput p6, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->e:I

    iput p7, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->f:I

    iput p8, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->g:I

    iput p9, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->h:I

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->b:Ljava/lang/String;

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "code:%d, ip:%s, maxtime:%d, mintime:%d, avgtime:%d, stddevtime:%d, count:%d, dropped:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
