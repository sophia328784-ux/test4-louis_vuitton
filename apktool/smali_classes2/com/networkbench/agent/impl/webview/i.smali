.class public Lcom/networkbench/agent/impl/webview/i;
.super Lcom/networkbench/agent/impl/webview/l;
.source "SourceFile"


# instance fields
.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/webview/l;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/harvest/ActionData;
    .locals 1

    new-instance p0, Lcom/networkbench/agent/impl/harvest/ActionData;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;-><init>(Z)V

    const/16 v0, 0x38c

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setStatusCode(I)V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorCode(I)V

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/networkbench/agent/impl/webview/i;->f:I

    return-void
.end method
