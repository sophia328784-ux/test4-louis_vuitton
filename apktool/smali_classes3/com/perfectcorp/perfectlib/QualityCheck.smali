.class public final Lcom/perfectcorp/perfectlib/QualityCheck;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/QualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;

    return-void
.end method


# virtual methods
.method public final getLightingQuality()Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/QualityCheck;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;->m_lighting_quality:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;->UNEVEN:Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;->GOOD:Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;->NORMAL:Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;->DARK:Lcom/perfectcorp/perfectlib/QualityCheck$LightingQuality;

    return-object p0
.end method
