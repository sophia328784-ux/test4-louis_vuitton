.class public final synthetic Lh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lh2;->d:I

    iput-object p3, p0, Lh2;->j:Ljava/lang/Enum;

    iput-boolean p4, p0, Lh2;->g:Z

    iput-object p5, p0, Lh2;->e:Ljava/lang/String;

    iput-object p6, p0, Lh2;->f:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lh2;->h:I

    iput p8, p0, Lh2;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;II)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lh2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lh2;->d:I

    iput-object p3, p0, Lh2;->e:Ljava/lang/String;

    iput-object p4, p0, Lh2;->f:Lkotlin/jvm/functions/Function0;

    iput-boolean p5, p0, Lh2;->g:Z

    iput-object p6, p0, Lh2;->j:Ljava/lang/Enum;

    iput p7, p0, Lh2;->h:I

    iput p8, p0, Lh2;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lh2;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lh2;->j:Ljava/lang/Enum;

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lh2;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lh2;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lh2;->d:I

    iget-object v3, p0, Lh2;->e:Ljava/lang/String;

    iget-object v4, p0, Lh2;->f:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, p0, Lh2;->g:Z

    iget v9, p0, Lh2;->i:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->p(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lh2;->j:Ljava/lang/Enum;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lh2;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lh2;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lh2;->d:I

    iget-boolean v4, p0, Lh2;->g:Z

    iget-object v5, p0, Lh2;->e:Ljava/lang/String;

    iget-object v6, p0, Lh2;->f:Lkotlin/jvm/functions/Function0;

    iget v9, p0, Lh2;->i:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
