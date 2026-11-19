.class Lcom/google/android/material/datepicker/YearGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/datepicker/YearGridAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/YearGridAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/YearGridAdapter$1;->c:Lcom/google/android/material/datepicker/YearGridAdapter;

    iput p2, p0, Lcom/google/android/material/datepicker/YearGridAdapter$1;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/datepicker/YearGridAdapter$1;->c:Lcom/google/android/material/datepicker/YearGridAdapter;

    iget-object v0, v0, Lcom/google/android/material/datepicker/YearGridAdapter;->b:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget p0, p0, Lcom/google/android/material/datepicker/YearGridAdapter$1;->b:I

    iget-object p1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->F:Lcom/google/android/material/datepicker/Month;

    iget p1, p1, Lcom/google/android/material/datepicker/Month;->c:I

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/Month;->a(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    iget-object p1, p0, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->D:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v2, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/Month;

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v3, v1, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gez v3, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-lez p1, :cond_1

    move-object p0, v2

    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->q(Lcom/google/android/material/datepicker/Month;)V

    sget-object p0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->r(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    iget-object p0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->O:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    throw p0
.end method
