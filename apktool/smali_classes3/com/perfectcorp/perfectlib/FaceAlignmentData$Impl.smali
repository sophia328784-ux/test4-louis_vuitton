.class final Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;
.super Lcom/perfectcorp/perfectlib/FaceAlignmentData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/FaceAlignmentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# instance fields
.field public final b:Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    invoke-virtual {v0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getFeaturePoints()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getRotation()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->rotation:I

    return p0
.end method

.method public final isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
