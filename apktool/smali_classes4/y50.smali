.class public final synthetic Ly50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:Ljava/lang/Integer;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IZFLjava/lang/Integer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly50;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Ly50;->c:I

    iput-boolean p3, p0, Ly50;->d:Z

    iput p4, p0, Ly50;->e:F

    iput-object p5, p0, Ly50;->f:Ljava/lang/Integer;

    iput p6, p0, Ly50;->g:I

    iput p7, p0, Ly50;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ly50;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Ly50;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Ly50;->c:I

    iget-boolean v2, p0, Ly50;->d:Z

    iget v3, p0, Ly50;->e:F

    iget-object v4, p0, Ly50;->f:Ljava/lang/Integer;

    iget v7, p0, Ly50;->h:I

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/compose/components/LVExpandableListAnimatedIconKt;->a(Landroidx/compose/ui/Modifier;IZFLjava/lang/Integer;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
