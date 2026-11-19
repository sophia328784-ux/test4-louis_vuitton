.class public final Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraInfo"
.end annotation


# instance fields
.field public final a:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->a:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    iput p2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->b:I

    return-void
.end method
