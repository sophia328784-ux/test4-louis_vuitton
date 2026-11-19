.class public Lcom/networkbench/agent/impl/webview/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/webview/n;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/webview/n;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/networkbench/agent/impl/webview/n;->b:I

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/webview/n;->b:I

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 16
    iget p0, p0, Lcom/networkbench/agent/impl/webview/n;->b:I

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
