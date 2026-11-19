.class public final synthetic Lly0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-wide p2, p0, Lly0;->c:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lly0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-wide v1, p0, Lly0;->c:D

    invoke-interface {v0, v1, v2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void
.end method
