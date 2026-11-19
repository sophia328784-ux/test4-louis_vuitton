.class public final synthetic Lc80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p6, p0, Lc80;->b:I

    iput-object p1, p0, Lc80;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc80;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lc80;->e:Z

    iput-object p4, p0, Lc80;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lc80;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v1, p0, Lc80;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lc80;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lc80;->e:Z

    iget-object v4, p0, Lc80;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpHeaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lc80;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lc80;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lc80;->e:Z

    iget-object v3, p0, Lc80;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersCategoryKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lc80;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lc80;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lc80;->e:Z

    iget-object v3, p0, Lc80;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
