.class public final synthetic Ltt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltt;->j:Ljava/lang/Object;

    iput p2, p0, Ltt;->d:I

    iput-object p3, p0, Ltt;->c:Ljava/lang/String;

    iput-object p4, p0, Ltt;->e:Ljava/lang/String;

    iput-object p5, p0, Ltt;->f:Ljava/lang/String;

    iput p6, p0, Ltt;->h:I

    iput-object p7, p0, Ltt;->g:Lkotlin/jvm/functions/Function0;

    iput p8, p0, Ltt;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Ltt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltt;->c:Ljava/lang/String;

    iput p2, p0, Ltt;->d:I

    iput-object p3, p0, Ltt;->e:Ljava/lang/String;

    iput-object p4, p0, Ltt;->f:Ljava/lang/String;

    iput-object p5, p0, Ltt;->j:Ljava/lang/Object;

    iput-object p6, p0, Ltt;->g:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Ltt;->h:I

    iput p8, p0, Ltt;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Ltt;->b:I

    iget-object v1, p0, Ltt;->j:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v1

    check-cast v6, Landroidx/compose/ui/text/TextStyle;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ltt;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v2, p0, Ltt;->c:Ljava/lang/String;

    iget v3, p0, Ltt;->d:I

    iget-object v4, p0, Ltt;->e:Ljava/lang/String;

    iget-object v5, p0, Ltt;->f:Ljava/lang/String;

    iget-object v7, p0, Ltt;->g:Lkotlin/jvm/functions/Function0;

    iget v10, p0, Ltt;->i:I

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpServicesKt;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ltt;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget v1, p0, Ltt;->d:I

    iget-object v2, p0, Ltt;->c:Ljava/lang/String;

    iget-object v3, p0, Ltt;->e:Ljava/lang/String;

    iget-object v4, p0, Ltt;->f:Ljava/lang/String;

    iget v5, p0, Ltt;->h:I

    iget-object v6, p0, Ltt;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairAddressCardComponentKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
