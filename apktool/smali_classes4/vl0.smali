.class public final synthetic Lvl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Lvl0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvl0;->d:Ljava/lang/String;

    iput-object p2, p0, Lvl0;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lvl0;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 13
    const/4 p4, 0x1

    iput p4, p0, Lvl0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lvl0;->c:Z

    iput-object p2, p0, Lvl0;->d:Ljava/lang/String;

    iput-object p3, p0, Lvl0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvl0;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lvl0;->d:Ljava/lang/String;

    iget-object v1, p0, Lvl0;->e:Ljava/lang/String;

    iget-boolean p0, p0, Lvl0;->c:Z

    invoke-static {p2, p1, v0, v1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanScreenKt;->a(ILandroidx/compose/runtime/Composer;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lvl0;->d:Ljava/lang/String;

    iget-object v1, p0, Lvl0;->e:Ljava/lang/String;

    iget-boolean p0, p0, Lvl0;->c:Z

    invoke-static {p2, p1, v0, v1, p0}, Lcom/vuitton/android/presentation/screen/booking/pass/components/PassColumnInfoKt;->a(ILandroidx/compose/runtime/Composer;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
