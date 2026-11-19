.class public final synthetic Ljg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/ui/Alignment;

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg0;->b:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Ljg0;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljg0;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Ljg0;->e:Landroidx/compose/ui/Alignment;

    iput-object p5, p0, Ljg0;->f:Ljava/util/Map;

    iput-object p6, p0, Ljg0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Ljg0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Ljg0;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Ljg0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Ljg0;->k:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Ljg0;->l:I

    iput p12, p0, Ljg0;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ljg0;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Ljg0;->b:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Ljg0;->c:Ljava/lang/Object;

    iget-object v2, p0, Ljg0;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Ljg0;->e:Landroidx/compose/ui/Alignment;

    iget-object v4, p0, Ljg0;->f:Ljava/util/Map;

    iget-object v5, p0, Ljg0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Ljg0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Ljg0;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Ljg0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Ljg0;->k:Lkotlin/jvm/functions/Function1;

    iget v12, p0, Ljg0;->m:I

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
