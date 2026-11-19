.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm<",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;",
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
.field public static final Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

.field public static final synthetic R:[Lkotlin/reflect/KProperty;

.field public static final S:Ljava/lang/String;


# instance fields
.field public final A:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/Integer;

.field public G:Ljava/lang/Integer;

.field public H:Ljava/lang/Integer;

.field public I:Ljava/lang/Integer;

.field public J:Ljava/lang/Integer;

.field public K:Ljava/lang/Integer;

.field public L:Ljava/lang/Integer;

.field public M:Ljava/lang/Integer;

.field public N:Ljava/lang/Integer;

.field public O:Ljava/lang/Integer;

.field public P:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->R:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    const-string v0, "FlightFormFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d006a

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->A:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->R:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->A:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    return-object p0
.end method

.method public final K(Landroid/widget/EditText;)V
    .locals 6

    new-instance v2, Lgz;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Lgz;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/EditText;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->F:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->G:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->H:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->F:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->G:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->H:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->K:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->L:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->M:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->K:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->L:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->M:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v0, Landroid/app/DatePickerDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 p1, 0x2

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

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->F:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->G:Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->H:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->K:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->L:Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->M:Ljava/lang/Integer;

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

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Lfz;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/EditText;I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->I:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->I:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->O:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->O:Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->I:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->O:Ljava/lang/Integer;

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
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->r:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final P(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->B:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->C:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->D:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->E:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->u:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->w:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final isValid()Z
    .locals 6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->m:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->p:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

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
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->k:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->b:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->u:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->v:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    return v4

    :cond_5
    return v3
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    const/16 p2, 0x1ed8

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    const/16 v1, 0x21

    const-string v2, "SELECTED_AIRPORT"

    const/4 v3, 0x0

    if-eq p1, p2, :cond_6

    const/16 p2, 0x1ed9

    if-eq p1, p2, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p3, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    if-nez p2, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-object p3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p3, v3

    :goto_2
    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;->d:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, p2, p3, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->P(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p3, :cond_9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_7

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    if-nez p2, :cond_8

    move-object p1, v3

    :cond_8
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    :goto_3
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    goto :goto_4

    :cond_9
    move-object p1, v3

    :goto_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    if-eqz p1, :cond_a

    iget-object p3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;->b:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p3, v3

    :goto_5
    if-eqz p1, :cond_b

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;->d:Ljava/lang/String;

    :cond_b
    invoke-virtual {p0, p2, p3, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->P(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
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

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->s:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v2

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->m:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f14133b

    if-eqz v5, :cond_0

    invoke-static {v7, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->p:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f14133f

    if-eqz v5, :cond_1

    invoke-static {v8, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->k:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v9, 0x7f141334

    if-eqz v5, :cond_2

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v7, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v8, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->v:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    const v5, 0x7f140a23

    invoke-static {v5, v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v2

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v7, Liz;

    invoke-direct {v7, v0, v2, v5}, Liz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    new-instance v8, Lhz;

    invoke-direct {v8, v4, v7, v5}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v7, Ljz;

    invoke-direct {v7, v0, v2, v5}, Ljz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v7, Liz;

    invoke-direct {v7, v0, v2, v3}, Liz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    new-instance v8, Lhz;

    invoke-direct {v8, v4, v7, v5}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v7, Ljz;

    invoke-direct {v7, v0, v2, v3}, Ljz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v7, Liz;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v2, v8}, Liz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    new-instance v9, Lhz;

    invoke-direct {v9, v4, v7, v5}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v7, Ljz;

    invoke-direct {v7, v0, v2, v8}, Ljz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v7, Liz;

    const/4 v9, 0x3

    invoke-direct {v7, v0, v2, v9}, Liz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    new-instance v10, Lhz;

    invoke-direct {v10, v4, v7, v5}, Lhz;-><init>(Landroid/widget/EditText;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v7, Ljz;

    invoke-direct {v7, v0, v2, v9}, Ljz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v2

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    new-instance v7, Lez;

    invoke-direct {v7, v0, v3}, Lez;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    new-instance v7, Ldz;

    invoke-direct {v7, v0, v5}, Ldz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;I)V

    invoke-static {v4, v7}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->b:Landroid/widget/EditText;

    new-instance v4, Lez;

    invoke-direct {v4, v0, v5}, Lez;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v4, Ldz;

    invoke-direct {v4, v0, v3}, Ldz;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;I)V

    invoke-static {v2, v4}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->u:Landroid/widget/EditText;

    new-instance v4, Lck;

    const/16 v7, 0x1a

    invoke-direct {v4, v1, v7}, Lck;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/vuitton/android/presentation/extensions/EditTextExtKt$addAfterTextChangedListener$1;

    invoke-direct {v1, v4}, Lcom/vuitton/android/presentation/extensions/EditTextExtKt$addAfterTextChangedListener$1;-><init>(Lck;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const-string v7, "TRAVEL"

    if-lt v2, v4, :cond_7

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    if-nez v2, :cond_8

    const/4 v1, 0x0

    :cond_8
    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    :goto_7
    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v2

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->P:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/4 v11, 0x5

    if-eqz v4, :cond_9

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->d:Ljava/util/Date;

    if-eqz v12, :cond_9

    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v13, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v12, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12, v14, v15, v6}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->L(Landroid/widget/EditText;III)V

    iget-object v6, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v6, v12, v13}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N(Landroid/widget/EditText;II)V

    :cond_9
    iget-object v6, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->j:Landroid/widget/EditText;

    if-eqz v4, :cond_a

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    :goto_8
    if-eqz v4, :cond_b

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->c:Ljava/lang/String;

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v0, v6, v12, v13}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->P(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->q:Landroid/widget/EditText;

    if-eqz v4, :cond_c

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->e:Ljava/lang/String;

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->n:Landroid/widget/EditText;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->f:Ljava/lang/String;

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_e

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->d:Ljava/util/Date;

    if-eqz v4, :cond_e

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v4, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v4, v3, v8, v11}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->L(Landroid/widget/EditText;III)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N(Landroid/widget/EditText;II)V

    :cond_e
    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->b:Landroid/widget/EditText;

    if-eqz v7, :cond_f

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    if-eqz v7, :cond_10

    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->c:Ljava/lang/String;

    goto :goto_d

    :cond_10
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v0, v3, v4, v6}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->P(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->i:Landroid/widget/EditText;

    if-eqz v7, :cond_11

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->e:Ljava/lang/String;

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->f:Landroid/widget/EditText;

    if-eqz v7, :cond_12

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->f:Ljava/lang/String;

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->u:Landroid/widget/EditText;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    if-eqz v4, :cond_13

    const-string v6, " "

    const-string v7, ""

    invoke-static {v4, v6, v7}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_13
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->w:Landroid/widget/EditText;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->c(Z)V

    :cond_14
    invoke-static/range {p0 .. p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final p(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)Z
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
    .locals 12

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->F:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->G:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->H:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->I:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    new-instance v1, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->K:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->L:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->M:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->N:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->O:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->J()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->P:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->B:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    iget-object v0, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->D:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->u:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p0, v2, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->w:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
