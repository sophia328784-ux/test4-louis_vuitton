.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm<",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

.field public static final synthetic H:[Lkotlin/reflect/KProperty;

.field public static final I:Ljava/lang/String;


# instance fields
.field public A:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

.field public B:Ljava/util/Date;

.field public C:Ljava/util/Date;

.field public D:Ljava/lang/String;

.field public final E:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final F:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->H:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;

    const-string v0, "HotelFormFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d006b

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->E:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lfw;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->F:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static p(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const-string v3, "PLACE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-nez v0, :cond_1

    move-object p1, v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    if-eqz p1, :cond_2

    iget-wide v3, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_3

    iget-wide v3, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-eqz p1, :cond_4

    iget-object v4, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->A:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->f:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->H:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->E:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    return-object p0
.end method

.method public final K(Landroid/widget/EditText;)V
    .locals 8

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->B:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->C:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/app/DatePickerDialog;

    new-instance v4, Lgz;

    const/4 v1, 0x1

    invoke-direct {v4, p0, p1, v1}, Lgz;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public final L(Landroid/widget/EditText;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->B:Ljava/util/Date;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->C:Ljava/util/Date;

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->n(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final M()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;->GEOCODING:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;->TRAVEL:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->F:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->k:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final isValid()Z
    .locals 7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->i:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v1, v4}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->q(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->f:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->g:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v4, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->q(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v4, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->q(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->q(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->A:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->B:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->C:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f140962

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const v0, 0x7f140963

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v6

    :cond_4
    if-eqz v5, :cond_5

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_5
    return v5
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->h:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->f:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v1

    iget-object v4, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const v7, 0x7f140aa7

    invoke-static {v7, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->g:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    const v7, 0x7f140aa6

    invoke-static {v7, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    const v7, 0x7f140583

    invoke-static {v7, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    const v5, 0x7f140584

    invoke-static {v5, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v6

    :goto_3
    invoke-virtual {v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v5, Lx10;

    invoke-direct {v5, v1, p0, v0, v4}, Lx10;-><init>(Landroid/widget/EditText;Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Ly10;

    invoke-direct {v5, p0, v0, v4}, Ly10;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;I)V

    invoke-static {v1, v5}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v5, Lx10;

    invoke-direct {v5, v1, p0, v0, v3}, Lx10;-><init>(Landroid/widget/EditText;Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Ly10;

    invoke-direct {v5, p0, v0, v3}, Ly10;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;I)V

    invoke-static {v1, v5}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Ll00;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Ljs;

    invoke-direct {v0, p0, v3}, Ljs;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v5, "TRAVEL"

    if-lt v1, v2, :cond_4

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    if-nez v1, :cond_5

    move-object v0, v6

    :cond_5
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    :goto_4
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->A:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->c:Ljava/lang/String;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->D:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->f:Landroid/widget/EditText;

    if-eqz v2, :cond_6

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;->e:Ljava/lang/String;

    :cond_6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->f:Ljava/util/Date;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_7

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p0, v2, v8, v9, v7}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->L(Landroid/widget/EditText;III)V

    :cond_7
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->g:Ljava/util/Date;

    if-eqz v2, :cond_8

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, v2, v3, v6, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->L(Landroid/widget/EditText;III)V

    :cond_8
    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->i:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->k:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->c(Z)V

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final q(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const p1, 0x7f1410dc

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final y()Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->A:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->B:Ljava/util/Date;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->C:Ljava/util/Date;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;->k:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method
