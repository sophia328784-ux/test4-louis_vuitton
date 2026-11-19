.class public final synthetic Lx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcoil3/compose/internal/AsyncImageState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/ui/Alignment;

.field public final synthetic g:Landroidx/compose/ui/layout/ContentScale;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcoil3/compose/internal/AsyncImageState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9;->b:Lcoil3/compose/internal/AsyncImageState;

    iput-object p2, p0, Lx9;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lx9;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lx9;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lx9;->f:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, Lx9;->g:Landroidx/compose/ui/layout/ContentScale;

    iput p7, p0, Lx9;->h:I

    iput p8, p0, Lx9;->i:I

    iput p9, p0, Lx9;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lx9;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget p1, p0, Lx9;->j:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lx9;->b:Lcoil3/compose/internal/AsyncImageState;

    iget-object v1, p0, Lx9;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lx9;->d:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lx9;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lx9;->f:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, Lx9;->g:Landroidx/compose/ui/layout/ContentScale;

    iget v6, p0, Lx9;->h:I

    invoke-static/range {v0 .. v9}, Lcoil3/compose/AsyncImageKt;->a(Lcoil3/compose/internal/AsyncImageState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
