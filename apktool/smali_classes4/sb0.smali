.class public final synthetic Lsb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Lsb0;->b:I

    iput-object p1, p0, Lsb0;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iput-object p2, p0, Lsb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lsb0;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    iget-object v1, p0, Lsb0;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    iget-object p0, p0, Lsb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    iget-object v1, p0, Lsb0;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    iget-object p0, p0, Lsb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    iget-object v1, p0, Lsb0;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    iget-object p0, p0, Lsb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    iget-object v1, p0, Lsb0;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    iget-object p0, p0, Lsb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
