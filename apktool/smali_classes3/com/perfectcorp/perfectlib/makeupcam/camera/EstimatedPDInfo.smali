.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;
.super Ljava/lang/Object;


# instance fields
.field public is_success:Z

.field public pd:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;->pd:F

    return-void
.end method
