.class public final synthetic Lod0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/navigation3/runtime/NavBackStack;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation3/runtime/NavBackStack;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod0;->c:Landroidx/navigation3/runtime/NavBackStack;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;Landroidx/navigation3/runtime/NavBackStack;)V
    .locals 0

    .line 9
    const/4 p1, 0x1

    iput p1, p0, Lod0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lod0;->c:Landroidx/navigation3/runtime/NavBackStack;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lod0;->b:I

    iget-object p0, p0, Lod0;->c:Landroidx/navigation3/runtime/NavBackStack;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->K(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
