.class public final synthetic Lh20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/ui/layout/ContentScale;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Integer;

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh20;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lh20;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh20;->d:Landroidx/compose/ui/layout/ContentScale;

    iput-object p4, p0, Lh20;->e:Ljava/lang/String;

    iput-object p5, p0, Lh20;->f:Ljava/lang/Integer;

    iput p6, p0, Lh20;->g:I

    iput-boolean p7, p0, Lh20;->h:Z

    iput-object p8, p0, Lh20;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lh20;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lh20;->k:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Lh20;->l:I

    iput p12, p0, Lh20;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lh20;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lh20;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lh20;->c:Ljava/lang/Object;

    iget-object v2, p0, Lh20;->d:Landroidx/compose/ui/layout/ContentScale;

    iget-object v3, p0, Lh20;->e:Ljava/lang/String;

    iget-object v4, p0, Lh20;->f:Ljava/lang/Integer;

    iget v5, p0, Lh20;->g:I

    iget-boolean v6, p0, Lh20;->h:Z

    iget-object v7, p0, Lh20;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lh20;->j:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lh20;->k:Lkotlin/jvm/functions/Function1;

    iget v12, p0, Lh20;->m:I

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
