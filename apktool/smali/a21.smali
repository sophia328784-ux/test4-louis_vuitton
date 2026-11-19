.class public final synthetic La21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcoil3/compose/SubcomposeAsyncImageScope;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/graphics/painter/Painter;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroidx/compose/ui/Alignment;

.field public final synthetic g:Landroidx/compose/ui/layout/ContentScale;

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/ui/graphics/ColorFilter;

.field public final synthetic j:Z

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lcoil3/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La21;->b:Lcoil3/compose/SubcomposeAsyncImageScope;

    iput-object p2, p0, La21;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, La21;->d:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p4, p0, La21;->e:Ljava/lang/String;

    iput-object p5, p0, La21;->f:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, La21;->g:Landroidx/compose/ui/layout/ContentScale;

    iput p7, p0, La21;->h:F

    iput-object p8, p0, La21;->i:Landroidx/compose/ui/graphics/ColorFilter;

    iput-boolean p9, p0, La21;->j:Z

    iput p10, p0, La21;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, La21;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, La21;->b:Lcoil3/compose/SubcomposeAsyncImageScope;

    iget-object v1, p0, La21;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, La21;->d:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v3, p0, La21;->e:Ljava/lang/String;

    iget-object v4, p0, La21;->f:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, La21;->g:Landroidx/compose/ui/layout/ContentScale;

    iget v6, p0, La21;->h:F

    iget-object v7, p0, La21;->i:Landroidx/compose/ui/graphics/ColorFilter;

    iget-boolean v8, p0, La21;->j:Z

    invoke-static/range {v0 .. v10}, Lcoil3/compose/SubcomposeAsyncImageKt;->b(Lcoil3/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
