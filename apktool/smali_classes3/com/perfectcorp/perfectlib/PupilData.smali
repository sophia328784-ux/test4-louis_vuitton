.class public final Lcom/perfectcorp/perfectlib/PupilData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PupilData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;

    return-void
.end method


# virtual methods
.method public final getPupilDistance()F
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PupilData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;->pd:F

    return p0
.end method

.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PupilData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;->is_success:Z

    return p0
.end method
