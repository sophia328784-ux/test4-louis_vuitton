.class public final Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;
.super Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrivenDrop"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;",
        "color",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;",
        "resourceId",
        "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;)V",
        "getColor",
        "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;",
        "getResourceId",
        "()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

.field private final resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->copy(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    return-object p0
.end method

.method public final copy(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    iget-object v3, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    iget-object p1, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    return-object p0
.end method

.method public final getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->color:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->resourceId:Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DrivenDrop(color="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", resourceId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
