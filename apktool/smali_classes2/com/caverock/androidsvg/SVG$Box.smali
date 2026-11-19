.class Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Box"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    .line 22
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    .line 23
    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    .line 24
    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->a:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->b:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->c:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->d:F

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    add-float/2addr v0, p0

    return v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    add-float/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->d:F

    const-string v1, "]"

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
