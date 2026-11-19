.class public final synthetic Lh71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/navigation/NavHostController;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh71;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    iput-boolean p2, p0, Lh71;->c:Z

    iput-object p3, p0, Lh71;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lh71;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lh71;->f:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lh71;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lh71;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lh71;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lh71;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lh71;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lh71;->l:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/b;

    iget-object v2, p0, Lh71;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    iget-boolean v3, p0, Lh71;->c:Z

    iget-object v4, p0, Lh71;->d:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lh71;->e:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lh71;->f:Landroidx/navigation/NavHostController;

    iget-object v7, p0, Lh71;->g:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lh71;->h:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Lh71;->i:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lh71;->j:Lkotlin/jvm/functions/Function1;

    iget-object v11, p0, Lh71;->k:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/wishlist/b;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    move-object p1, v2

    move-object v9, v6

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x458e6f03

    const/4 v10, 0x1

    invoke-direct {v8, v2, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v11, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Wishlist;

    invoke-virtual {v11, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v1, Ls8;

    const/16 v2, 0x11

    iget-object p0, p0, Lh71;->l:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, p1, v9, p0, v2}, Ls8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p0, -0x3b3ac2c6

    invoke-direct {v8, p0, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Share;

    invoke-virtual {v11, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
