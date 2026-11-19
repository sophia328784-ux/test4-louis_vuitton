.class public final synthetic Lv70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p5, p0, Lv70;->b:I

    iput-object p1, p0, Lv70;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lv70;->d:Z

    iput-object p4, p0, Lv70;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lv70;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lv70;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lv70;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lv70;->d:Z

    invoke-static {p2, p1, v0, v1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lv70;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lv70;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lv70;->d:Z

    invoke-static {p2, p1, v0, v1, p0}, Lcom/vuitton/android/presentation/compose/LVSoundButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
