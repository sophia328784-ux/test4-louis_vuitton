.class public final Lcom/google/android/material/shape/OffsetEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/material/shape/EdgeTreatment;

.field public final c:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/EdgeTreatment;F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->b:Lcom/google/android/material/shape/EdgeTreatment;

    iput p2, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->c:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->b:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {p0}, Lcom/google/android/material/shape/EdgeTreatment;->a()Z

    move-result p0

    return p0
.end method

.method public final b(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->c:F

    sub-float/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->b:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/EdgeTreatment;->b(FFFLcom/google/android/material/shape/ShapePath;)V

    return-void
.end method
