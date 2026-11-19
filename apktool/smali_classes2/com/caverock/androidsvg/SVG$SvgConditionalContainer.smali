.class abstract Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SvgConditionalContainer"
.end annotation


# instance fields
.field public i:Ljava/util/List;

.field public j:Ljava/util/HashSet;

.field public k:Ljava/lang/String;

.field public l:Ljava/util/HashSet;

.field public m:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->j:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->l:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->m:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->j:Ljava/util/HashSet;

    return-void
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->j:Ljava/util/HashSet;

    return-object p0
.end method

.method public final f(Ljava/util/HashSet;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    return-object p0
.end method

.method public final h(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->m:Ljava/util/HashSet;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->k:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->l:Ljava/util/HashSet;

    return-void
.end method

.method public final l()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->l:Ljava/util/HashSet;

    return-object p0
.end method

.method public final m()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->m:Ljava/util/HashSet;

    return-object p0
.end method
