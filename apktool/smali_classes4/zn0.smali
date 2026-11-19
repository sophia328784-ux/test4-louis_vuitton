.class public final synthetic Lzn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzn0;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    sget-object p2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->c:Lcom/google/common/collect/ImmutableMap;

    iget-object p0, p0, Lzn0;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

    invoke-interface {p0, p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;->h([B)V

    return-void
.end method
