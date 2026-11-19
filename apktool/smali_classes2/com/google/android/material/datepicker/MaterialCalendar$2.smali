.class Lcom/google/android/material/datepicker/MaterialCalendar$2;
.super Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic E:I

.field public final synthetic F:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$2;->F:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput p4, p0, Lcom/google/android/material/datepicker/MaterialCalendar$2;->E:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public final L0(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$2;->F:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->J:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$2;->E:I

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    aput p0, p2, v2

    iget-object p0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->J:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    aput p0, p2, v1

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, p2, v2

    iget-object p0, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->J:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, p2, v1

    return-void
.end method
