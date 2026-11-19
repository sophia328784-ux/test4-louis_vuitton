.class public final synthetic Lof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

.field public final synthetic e:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p7, p0, Lof;->b:I

    iput-object p1, p0, Lof;->c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    iput-object p2, p0, Lof;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iput-object p3, p0, Lof;->e:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lof;->f:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lof;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lof;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x181

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Lof;->c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    iget-object v2, p0, Lof;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iget-object v3, p0, Lof;->e:Landroidx/compose/material3/SnackbarHostState;

    iget-object v4, p0, Lof;->f:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lof;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt;->a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lof;->c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    iget-object v1, p0, Lof;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iget-object v2, p0, Lof;->e:Landroidx/compose/material3/SnackbarHostState;

    iget-object v3, p0, Lof;->f:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lof;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt;->a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
