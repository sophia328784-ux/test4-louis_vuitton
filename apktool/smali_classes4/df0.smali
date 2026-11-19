.class public final synthetic Ldf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ldf0;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-boolean p3, p0, Ldf0;->d:Z

    iput-boolean p4, p0, Ldf0;->e:Z

    iput-object p5, p0, Ldf0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Ldf0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Ldf0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Ldf0;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Ldf0;->j:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Ldf0;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Ldf0;->l:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Ldf0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ldf0;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v2, p0, Ldf0;->d:Z

    iget-boolean v3, p0, Ldf0;->e:Z

    iget-object v4, p0, Ldf0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Ldf0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Ldf0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Ldf0;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Ldf0;->j:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Ldf0;->k:Lkotlin/jvm/functions/Function1;

    iget-object v10, p0, Ldf0;->l:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/cart/components/sections/NativeCartItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
