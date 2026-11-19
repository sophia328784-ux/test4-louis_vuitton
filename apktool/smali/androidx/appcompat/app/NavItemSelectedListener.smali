.class Landroidx/appcompat/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final b:Landroidx/appcompat/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/NavItemSelectedListener;->b:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static {p2}, Lcom/dynatrace/android/callback/Callback;->s(Landroid/view/View;)V

    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/app/NavItemSelectedListener;->b:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/app/ActionBar$OnNavigationListener;->a()Z

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->t()V

    throw p0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
