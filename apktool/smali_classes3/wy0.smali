.class public final synthetic Lwy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic c:D

.field public final synthetic d:D


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwy0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-wide p2, p0, Lwy0;->c:D

    iput-wide p4, p0, Lwy0;->d:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lwy0;->c:D

    iget-wide v2, p0, Lwy0;->d:D

    add-double/2addr v0, v2

    iget-object p0, p0, Lwy0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void
.end method
