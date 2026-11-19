.class public final synthetic Lvh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lvh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lvh;->e:Landroidx/compose/ui/Modifier;

    iput p1, p0, Lvh;->f:I

    iput-object p4, p0, Lvh;->c:Ljava/lang/String;

    iput-object p5, p0, Lvh;->d:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lvh;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;III)V
    .locals 0

    .line 17
    iput p6, p0, Lvh;->b:I

    iput-object p1, p0, Lvh;->c:Ljava/lang/String;

    iput-object p2, p0, Lvh;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lvh;->e:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lvh;->f:I

    iput p5, p0, Lvh;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lvh;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lvh;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v1, p0, Lvh;->c:Ljava/lang/String;

    iget-object v2, p0, Lvh;->d:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lvh;->e:Landroidx/compose/ui/Modifier;

    iget v5, p0, Lvh;->f:I

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductFocusDialogKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lvh;->c:Ljava/lang/String;

    iget-object v1, p0, Lvh;->d:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lvh;->e:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lvh;->f:I

    iget v4, p0, Lvh;->g:I

    invoke-static/range {v0 .. v6}, Lcom/sightcall/graphik/composent/ButtonsKt;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lvh;->c:Ljava/lang/String;

    iget-object v1, p0, Lvh;->d:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lvh;->e:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lvh;->f:I

    iget v4, p0, Lvh;->g:I

    invoke-static/range {v0 .. v6}, Lcom/sightcall/graphik/composent/ButtonsKt;->h(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
