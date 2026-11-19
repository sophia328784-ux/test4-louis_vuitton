.class public final synthetic Lo70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo70;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lo70;->e:F

    iput-object p3, p0, Lo70;->g:Ljava/lang/Object;

    iput-object p4, p0, Lo70;->h:Ljava/lang/Object;

    iput p5, p0, Lo70;->d:I

    iput p6, p0, Lo70;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;FLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 19
    const/4 p6, 0x1

    iput p6, p0, Lo70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo70;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lo70;->d:I

    iput-object p3, p0, Lo70;->g:Ljava/lang/Object;

    iput p4, p0, Lo70;->e:F

    iput-object p5, p0, Lo70;->h:Ljava/lang/Object;

    iput p7, p0, Lo70;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo70;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo70;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lo70;->h:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Lo70;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lo70;->d:I

    iget v4, p0, Lo70;->e:F

    iget v8, p0, Lo70;->f:I

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastControlButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo70;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v0, p0, Lo70;->h:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/InfiniteTransition;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo70;->d:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v1, p0, Lo70;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lo70;->e:F

    iget v7, p0, Lo70;->f:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->c(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
