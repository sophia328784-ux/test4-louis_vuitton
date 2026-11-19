.class public final synthetic Lil0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V
    .locals 0

    iput p2, p0, Lil0;->b:I

    iput-object p1, p0, Lil0;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lil0;->b:I

    iget-object p0, p0, Lil0;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Bc(Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Bc(Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
