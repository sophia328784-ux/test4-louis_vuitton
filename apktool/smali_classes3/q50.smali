.class public final synthetic Lq50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq50;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lq50;->c:Z

    iput-boolean p3, p0, Lq50;->d:Z

    iput-object p4, p0, Lq50;->e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p5, p0, Lq50;->f:Z

    iput-object p6, p0, Lq50;->g:Lkotlin/jvm/functions/Function1;

    iput p7, p0, Lq50;->h:I

    iput p8, p0, Lq50;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lq50;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lq50;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lq50;->c:Z

    iget-boolean v2, p0, Lq50;->d:Z

    iget-object v3, p0, Lq50;->e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v4, p0, Lq50;->f:Z

    iget-object v5, p0, Lq50;->g:Lkotlin/jvm/functions/Function1;

    iget v8, p0, Lq50;->i:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
