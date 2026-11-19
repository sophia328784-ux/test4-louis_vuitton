.class public Lcom/networkbench/agent/impl/socket/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/socket/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/socket/r$b;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/r$b;->b:Z

    return-void
.end method
