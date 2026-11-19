.class public final synthetic Lqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lqm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lqm;->g:Ljava/lang/Object;

    iput-object p3, p0, Lqm;->h:Ljava/lang/Object;

    iput-wide p4, p0, Lqm;->d:J

    iput-object p6, p0, Lqm;->i:Ljava/lang/Object;

    iput-object p7, p0, Lqm;->j:Lkotlin/Function;

    iput p8, p0, Lqm;->e:I

    iput p9, p0, Lqm;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;JLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;II)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lqm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lqm;->g:Ljava/lang/Object;

    iput-wide p3, p0, Lqm;->d:J

    iput-object p5, p0, Lqm;->h:Ljava/lang/Object;

    iput-object p6, p0, Lqm;->i:Ljava/lang/Object;

    iput-object p7, p0, Lqm;->j:Lkotlin/Function;

    iput p8, p0, Lqm;->e:I

    iput p9, p0, Lqm;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JLcom/vuitton/android/presentation/model/onboarding/IconLauncherType;Ljava/util/List;Lkotlin/jvm/functions/Function2;II)V
    .locals 1

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lqm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lqm;->h:Ljava/lang/Object;

    iput-wide p3, p0, Lqm;->d:J

    iput-object p5, p0, Lqm;->i:Ljava/lang/Object;

    iput-object p6, p0, Lqm;->g:Ljava/lang/Object;

    iput-object p7, p0, Lqm;->j:Lkotlin/Function;

    iput p8, p0, Lqm;->e:I

    iput p9, p0, Lqm;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lqm;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqm;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lqm;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    iget-object v0, p0, Lqm;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    iget-object v0, p0, Lqm;->j:Lkotlin/Function;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lqm;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lqm;->c:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lqm;->d:J

    iget v10, p0, Lqm;->f:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/compose/components/LVIconSelectorKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JLcom/vuitton/android/presentation/model/onboarding/IconLauncherType;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lqm;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lqm;->h:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v0, p0, Lqm;->i:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lqm;->j:Lkotlin/Function;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lqm;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lqm;->c:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Lqm;->d:J

    iget v10, p0, Lqm;->f:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lqm;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v0, p0, Lqm;->h:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lqm;->i:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lqm;->j:Lkotlin/Function;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function3;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lqm;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lqm;->c:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lqm;->d:J

    iget v10, p0, Lqm;->f:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/compose/components/CollapsingDetailListKt;->c(Landroidx/compose/ui/Modifier;Ljava/util/List;JLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
