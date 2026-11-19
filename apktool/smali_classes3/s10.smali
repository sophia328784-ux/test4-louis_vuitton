.class public final synthetic Ls10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;III)V
    .locals 0

    iput p11, p0, Ls10;->b:I

    iput-object p1, p0, Ls10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ls10;->d:Ljava/util/List;

    iput-boolean p3, p0, Ls10;->e:Z

    iput-boolean p4, p0, Ls10;->f:Z

    iput-boolean p5, p0, Ls10;->g:Z

    iput-object p6, p0, Ls10;->h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p7, p0, Ls10;->i:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Ls10;->j:Lkotlin/jvm/functions/Function0;

    iput p9, p0, Ls10;->k:I

    iput p10, p0, Ls10;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Ls10;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ls10;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v1, p0, Ls10;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Ls10;->d:Ljava/util/List;

    iget-boolean v3, p0, Ls10;->e:Z

    iget-boolean v4, p0, Ls10;->f:Z

    iget-boolean v5, p0, Ls10;->g:Z

    iget-object v6, p0, Ls10;->h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v7, p0, Ls10;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Ls10;->j:Lkotlin/jvm/functions/Function0;

    iget v11, p0, Ls10;->l:I

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->c(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ls10;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Ls10;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ls10;->d:Ljava/util/List;

    iget-boolean v2, p0, Ls10;->e:Z

    iget-boolean v3, p0, Ls10;->f:Z

    iget-boolean v4, p0, Ls10;->g:Z

    iget-object v5, p0, Ls10;->h:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v6, p0, Ls10;->i:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Ls10;->j:Lkotlin/jvm/functions/Function0;

    iget v10, p0, Ls10;->l:I

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->c(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
