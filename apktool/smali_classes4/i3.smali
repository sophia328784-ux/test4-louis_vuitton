.class public final synthetic Li3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:F

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3;->b:Ljava/util/List;

    iput-boolean p2, p0, Li3;->c:Z

    iput-object p3, p0, Li3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Li3;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Li3;->f:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Li3;->g:F

    iput-object p7, p0, Li3;->h:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Li3;->i:I

    iput p9, p0, Li3;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Li3;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Li3;->b:Ljava/util/List;

    iget-boolean v1, p0, Li3;->c:Z

    iget-object v2, p0, Li3;->d:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Li3;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Li3;->f:Lkotlin/jvm/functions/Function1;

    iget v5, p0, Li3;->g:F

    iget-object v6, p0, Li3;->h:Lkotlin/jvm/functions/Function1;

    iget v9, p0, Li3;->j:I

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->b(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
