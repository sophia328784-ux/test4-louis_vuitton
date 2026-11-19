.class public final synthetic Ln3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Ln3;->c:Z

    iput-boolean p3, p0, Ln3;->d:Z

    iput-boolean p4, p0, Ln3;->e:Z

    iput-object p5, p0, Ln3;->f:Ljava/util/List;

    iput-object p6, p0, Ln3;->g:Ljava/util/List;

    iput-object p7, p0, Ln3;->h:Ljava/util/List;

    iput-object p8, p0, Ln3;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Ln3;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Ln3;->k:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x6000001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Ln3;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Ln3;->c:Z

    iget-boolean v2, p0, Ln3;->d:Z

    iget-boolean v3, p0, Ln3;->e:Z

    iget-object v4, p0, Ln3;->f:Ljava/util/List;

    iget-object v5, p0, Ln3;->g:Ljava/util/List;

    iget-object v6, p0, Ln3;->h:Ljava/util/List;

    iget-object v7, p0, Ln3;->i:Lkotlin/jvm/functions/Function2;

    iget-object v8, p0, Ln3;->j:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Ln3;->k:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a(Landroidx/compose/ui/Modifier;ZZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
