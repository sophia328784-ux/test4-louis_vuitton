.class Lcom/caverock/androidsvg/SVG$TextPath;
.super Lcom/caverock/androidsvg/SVG$TextContainer;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextPath"
.end annotation


# instance fields
.field public n:Ljava/lang/String;

.field public o:Lcom/caverock/androidsvg/SVG$Length;

.field public p:Lcom/caverock/androidsvg/SVG$TextRoot;


# virtual methods
.method public final c()Lcom/caverock/androidsvg/SVG$TextRoot;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$TextPath;->p:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    const-string p0, "textPath"

    return-object p0
.end method
