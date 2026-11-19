.class public final synthetic Lv50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lv50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv50;->c:Ljava/lang/String;

    iput-object p2, p0, Lv50;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lv50;->e:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;I)V
    .locals 0

    .line 13
    const/4 p4, 0x0

    iput p4, p0, Lv50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv50;->c:Ljava/lang/String;

    iput-object p2, p0, Lv50;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lv50;->e:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lv50;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lv50;->e:Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;

    iget-object v3, p0, Lv50;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lv50;->c:Ljava/lang/String;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    and-int/2addr p2, v1

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez p0, :cond_1

    const p0, -0x20ca329d

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    const p2, -0x20ca329c

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p0, v3, v2, p1, v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v3, v2, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
