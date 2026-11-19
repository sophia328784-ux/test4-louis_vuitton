.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm<",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;",
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
.field public static final Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

.field public static final synthetic R:[Lkotlin/reflect/KProperty;

.field public static final S:Ljava/lang/String;


# instance fields
.field public final A:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public B:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

.field public C:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

.field public D:Ljava/lang/Integer;

.field public E:Ljava/lang/Integer;

.field public F:Ljava/lang/Integer;

.field public G:Ljava/lang/Integer;

.field public H:Ljava/lang/Integer;

.field public I:Ljava/lang/Integer;

.field public J:Ljava/lang/Integer;

.field public K:Ljava/lang/Integer;

.field public L:Ljava/lang/Integer;

.field public M:Ljava/lang/Integer;

.field public N:Ljava/lang/String;

.field public final O:Landroidx/activity/result/ActivityResultLauncher;

.field public final P:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->R:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    const-string v0, "TrainFormFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d007b

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->A:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lt41;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lt41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->O:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lt41;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lt41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->P:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static p(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "PLACE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->f:Landroid/widget/EditText;

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->P(Landroid/widget/EditText;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V

    :cond_2
    return-void
.end method

.method public static q(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "PLACE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->P(Landroid/widget/EditText;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->R:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->A:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    return-object p0
.end method

.method public final K(Landroid/widget/EditText;)V
    .locals 6

    new-instance v2, Lgz;

    const/4 v0, 0x2

    invoke-direct {v2, p0, p1, v0}, Lgz;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/EditText;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->D:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->E:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->F:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->D:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->E:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->F:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->I:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->K:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->I:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->K:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    move p1, v0

    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public final L(Landroid/widget/EditText;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->D:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->E:Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->F:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->I:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J:Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->K:Ljava/lang/Integer;

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

.method public final M(Landroid/widget/EditText;)V
    .locals 6

    new-instance v2, Lfz;

    const/4 v0, 0x1

    invoke-direct {v2, p0, p1, v0}, Lfz;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/EditText;I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->H:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->G:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->H:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->L:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->M:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->L:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->M:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 p0, 0xb

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method

.method public final N(Landroid/widget/EditText;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->G:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->H:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->L:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->M:Ljava/lang/Integer;

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->o(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final O(I)V
    .locals 4

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

    if-eqz v0, :cond_5

    const/16 v2, 0x25d4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x25d5

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;->GEOCODING:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;->TRAVEL:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->P:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object p1, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;->t:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;->GEOCODING:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;->TRAVEL:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->O:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final P(Landroid/widget/EditText;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object v1, p2, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    iget-wide v2, p2, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p2, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object p2

    iget-object v2, p2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    iget-object v3, p2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->f:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->B:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object p0, p2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->C:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->s:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->o:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final isValid()Z
    .locals 6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->l:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->n:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->f:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->g:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->s:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->t:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    return v4

    :cond_5
    return v3
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
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v2, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->q:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f14133b

    if-eqz v4, :cond_0

    invoke-static {v6, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->l:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f14133f

    if-eqz v4, :cond_1

    invoke-static {v7, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->n:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f141342

    if-eqz v4, :cond_2

    invoke-static {v8, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v6, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v7, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->g:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v8, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->t:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    const v4, 0x7f141333

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v6, Lq41;

    const/4 v7, 0x2

    invoke-direct {v6, v0, v1, v7}, Lq41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    new-instance v8, Lhz;

    invoke-direct {v8, v2, v6, v3}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v6, Lr41;

    invoke-direct {v6, v0, v1, v7}, Lr41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v6, Lq41;

    const/4 v8, 0x3

    invoke-direct {v6, v0, v1, v8}, Lq41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    new-instance v9, Lhz;

    invoke-direct {v9, v2, v6, v3}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v6, Lr41;

    invoke-direct {v6, v0, v1, v8}, Lr41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v6, Lq41;

    invoke-direct {v6, v0, v1, v4}, Lq41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    new-instance v8, Lhz;

    invoke-direct {v8, v2, v6, v3}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v6, Lr41;

    invoke-direct {v6, v0, v1, v4}, Lr41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v6, Lq41;

    invoke-direct {v6, v0, v1, v3}, Lq41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    new-instance v8, Lhz;

    invoke-direct {v8, v2, v6, v3}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v6, Lr41;

    invoke-direct {v6, v0, v1, v3}, Lr41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    new-instance v6, Lp41;

    invoke-direct {v6, v0, v4}, Lp41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    new-instance v6, Ls41;

    invoke-direct {v6, v0, v4}, Ls41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->f:Landroid/widget/EditText;

    new-instance v2, Lp41;

    invoke-direct {v2, v0, v3}, Lp41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v2, Ls41;

    invoke-direct {v2, v0, v3}, Ls41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const-string v8, "TRAVEL"

    if-lt v2, v6, :cond_7

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-nez v2, :cond_8

    const/4 v1, 0x0

    :cond_8
    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    :goto_7
    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->g:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->N:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v2

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->f:Ljava/util/Date;

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/4 v12, 0x5

    if-eqz v9, :cond_9

    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v13, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v9, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v13, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v9, v14, v15, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->L(Landroid/widget/EditText;III)V

    iget-object v5, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v5, v9, v13}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->N(Landroid/widget/EditText;II)V

    :cond_9
    iget-object v5, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->m:Landroid/widget/EditText;

    if-eqz v8, :cond_a

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->B:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->h:Ljava/util/Date;

    if-eqz v5, :cond_b

    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v5, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v5, v3, v7, v9}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->L(Landroid/widget/EditText;III)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v3, v5, v7}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->N(Landroid/widget/EditText;II)V

    :cond_b
    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->f:Landroid/widget/EditText;

    if-eqz v6, :cond_c

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->C:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->s:Landroid/widget/EditText;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->h:Landroid/widget/EditText;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->o:Landroid/widget/EditText;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->c(Z)V

    :cond_d
    invoke-static/range {p0 .. p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final r(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z
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
    .locals 11

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->D:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->E:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->F:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->G:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->H:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    new-instance v1, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->I:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->K:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->L:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->M:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->N:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->s:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->B:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->C:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->o:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;Ljava/util/Date;Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
