.class public abstract Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/action/ActionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/engine/action/BaseAction;I)V
    .locals 0

    const p1, 0x7fffffff

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;->b()V

    :cond_0
    return-void
.end method

.method public abstract b()V
.end method
