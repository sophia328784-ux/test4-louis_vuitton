.class public final Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u000c\u0010\u0008\u001a\u00020\t*\u00020\u0001H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "addSVGTags",
        "",
        "setting",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "replaceColor",
        "color",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;",
        "replaceStroke",
        "toDrawable",
        "Landroid/graphics/drawable/PictureDrawable;",
        "advancedannotations_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$addSVGTags(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotationKt;->addSVGTags(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$replaceColor(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotationKt;->replaceColor(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$replaceStroke(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotationKt;->replaceStroke(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toDrawable(Ljava/lang/String;)Landroid/graphics/drawable/PictureDrawable;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotationKt;->toDrawable(Ljava/lang/String;)Landroid/graphics/drawable/PictureDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static final addSVGTags(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/settings/Setting;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/settings/Setting;->getHeight()I

    move-result p1

    const-string v1, "\" height=\""

    const-string v2, "\" version=\"1.1\">\n"

    const-string v3, "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\""

    invoke-static {v0, p1, v3, v1, v2}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</svg>"

    invoke-static {p0, v0, p1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final replaceColor(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;->getValue()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#COLOR"

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final replaceStroke(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->getStroke(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;->getValue()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#STROKE"

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final toDrawable(Ljava/lang/String;)Landroid/graphics/drawable/PictureDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-static {p0}, Lcom/caverock/androidsvg/SVG;->b(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG;->c()Landroid/graphics/Picture;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v0
.end method
